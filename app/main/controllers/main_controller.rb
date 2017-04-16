require 'pp'

# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    
    reactive_accessor :dirty

    def initialize(*args)
      super
      update_model
    end

    def index
      update_model
      select_pen(params._index || 0)
    end

    def about
      # Add code for when the about view is loaded
    end

    def dirty
      current_pen._ragel_content.then do |rc|
        rc != page._ragel_input
      end
    end

    def ragel_input_val
        page._ragel_input
    end

    def ragel_input_val=(val)
        page._ragel_input = val
        puts "TRIG"
    end

    def add_pen
      _pens << { name: "Unnamed Pen" }
      params._index = _pens.array.length - 1
    end

    def remove_pen(pen, index)
      pen.destroy
      new_index = (index <= current_index) ? (current_index - 1) : current_index
      if new_index >= 0
        params._index = new_index
      else
        params._index = nil
      end
    end

    def select_pen(index)
      params._index = index
      current_pen.then do |pen|
        page._ragel_input = pen._ragel_content
      end
    end

    def change_pen(ragel_input)
      update_pen(ragel_input) if page._autoupdate
    end

    def update_pen(ragel_input)
      current_pen.then do |pen|
        RagelTasks.run_ragel(pen.id, ragel_input, page._enhance).then do |result|
          puts "Result: #{result}"
        end.fail do |error|
          puts "Error: #{error}"
        end
      end
    end

    def current_index
      params._index.to_i
    end

    def current_pen
      _pens[current_index]
    end

    def update_model
      self.model = :store
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
