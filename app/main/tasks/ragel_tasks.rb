require 'open3'
require 'main/lib/dot_wrapper'
require 'main/lib/svg_wrapper'

class RagelTasks < Volt::Task
  def run_ragel(pen_id, ragel_input, enhance = false)
    
    # lookup the pen
    store._pens.find(id: pen_id).first.then do |pen|

      # clear any errors
      pen._error = ""

      # set the ragel_content
      pen._ragel_content = ragel_input

      # setup tempdir 
      Dir.mktmpdir do |dir|

        # create the ragel file
        ragel_file = create_ragel(dir, pen._ragel_content)

        # run ragel -R to create the rb file and save the output
        ruby_file, err, status = create_ruby(dir, ragel_file)
        return build_error(pen, err) unless status.success?
        pen._ruby_content = File.read(ruby_file)
    
        # # run ragel -V to create the dot file
        dot_file, err = create_dot(dir, ragel_file, enhance)
        return build_error(pen, err) unless status.success?
        pen._dot_content = File.read(dot_file)

        # convert to png (or svg)
        svg_file, err = create_svg(dir, dot_file)
        return build_error(pen, err) unless status.success?
        pen._svg_content = SvgWrapper.new(File.read(svg_file)).as_embed
        
        # return png/svg or link to the same
        "ok"
      end
    end
  end

  protected

  def create_ragel(dir, content)
    File.join(dir, "input.rl").tap do |fn_output|
      File.open(fn_output, 'w') do |file| 
        file.write(content)
      end
    end
  end

  def create_ruby(dir, fn_input)
    File.join(dir, "output.rb").tap do |fn_output|
      out, err, status = Open3.capture3("ragel -R #{fn_input} -o #{fn_output}")
      return [fn_output, err, status]
    end
  end

  def create_dot(dir, fn_input, enhance)
    File.join(dir, "output.dot").tap do |fn_output|
      out, err, status = Open3.capture3("ragel -V #{fn_input} -o #{fn_output}")
      File.join(dir, "output_enhanced.dot").tap do |fn_output_enhanced|
        File.open(fn_output_enhanced, 'w') do |f|
          wrapper = DotWrapper.new(File.read(fn_output))
          wrapper = wrapper.processed if enhance
          f.write(wrapper.dot)
        end
        return [fn_output_enhanced, err, status]
      end
    end
  end

  def create_svg(dir, fn_input)
    File.join(dir, "output.svg").tap do |fn_output|
      out, err, status = Open3.capture3("dot -Tsvg #{fn_input} -o #{fn_output}")
      return [fn_output, err, status]
    end
  end

  def build_error(pen, err)
    pen_id._error = err
    pen._ruby_content = ''
    pen._dot_content = ''
    pen._svg_content = ''
    Promise.error(err)
  end

end
