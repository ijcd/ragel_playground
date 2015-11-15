=begin
%%{
  machine args;

  access @;
  variable p @p;
  variable pe @pe;
  variable ts @ts;
  variable te @te;
  variable eof @eof;  
  variable act @act;

  action mark_arg {
    puts "mark arg"
    @arg_start = @p
  }

  action mark_flags {
    puts "mark flags"
    @flag_start = @p
  }

  action mark_longopt {
    puts "mark longopt"
    @longopt_start = @p
  }

  action saw_arg {
    puts "Arg #{current_match(@arg_start).pack('c*')}"
  }

  action saw_longopt {
    puts "longopt #{current_match(@longopt_start).pack('c*')}"
  }

  action saw_flags {
    puts "Flags #{current_match(@flag_start).pack('c*')}"
  }

  arg = alpha+ >mark_arg;

  flags = alpha+ >mark_flags;

  long_opt = alpha+ >mark_longopt;

  main := |*
    arg => saw_arg;
    '-' flags => saw_flags;
    '--' long_opt => saw_longopt;
    space;
  *|;
}%%
=end

require './ragel_parser_base.rb'

class ArgsParser < RagelParserBase
  def initialize
    %%write data;
    #%
    super
    %%write init;
    #%
  end

  def current_flags
    @data[@flag_start..@pe]
  end

  def perform
    %%write exec;
    #%
  end

  def first_final
    args_first_final
  end

  def status
    puts "==="
    puts "arg_start=#{@arg_start}"
    puts "flag_start=#{@flag_start}"
    puts "longopt_start=#{@longopt_start}"        
    puts 
    super
  end
end

ArgsParser.new.parse_stdin

