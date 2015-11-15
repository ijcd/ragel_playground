# Arg Parsing
#
# valarg "quotedv" -flags --longf="quotedv"

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

  action emit_shortf  { puts "GOT SHORTF: " + @data[@pe - 1].chr.to_s }

  action emit_longf { puts "GOT LONGF: " + @buf_longf.pack('c*') ; @buf_longf = [] }
  action buf_longf  { @buf_longf << @data[@pe - 1] }

  action emit_valarg { puts "GOT valarg: " + @buf_valarg.pack('c*') ; @buf_valarg = [] }
  action buf_valarg  { @buf_valarg << @data[@pe - 1] }

  action emit_quotedv { puts "GOT quotedv: " + @buf_quotedv.pack('c*') ; @buf_quotedv = [] }
  action buf_quotedv  { @buf_quotedv << @data[@pe - 1] }

  ARGS_parse =
  start: (
    space -> start |
    '-' -> preflag |
    '"' -> quotedv |
    (print - '-' - '"' - space) @buf_valarg -> valarg
  ) ${ puts "in start" },

  preflag: (
    alnum @emit_shortf -> shortf |
    '-' -> longf
  ) ${ puts "in preflag" },

  shortf: (
    alnum @emit_shortf -> shortf |
    '=' -> eq |
    space -> start
  ) ${ puts "in shortf"},

  longf: (
    alnum @buf_longf -> longf |
    '=' @emit_longf -> eq |
    space @emit_longf -> start
  ) ${ puts "in longf"},

  eq: (
    (print - '"') @buf_valarg -> valarg |
    '"' -> quotedv
  ) ${ puts "in eq" },

  valarg: (
    print @buf_valarg -> valarg |
    space @emit_valarg -> start
  ) ${ puts "in valarg" },

  quotedv: (
    (print - '"') @buf_quotedv -> quotedv |
    '"' @emit_quotedv -> start
  ) ${ puts "in quotedv" };

  main := ARGS_parse;
}%%
=end

require './ragel_parser_base.rb'

class ArgsStatechart < RagelParserBase
  def initialize
    %%write data;
    #%
    super
    %%write init;
    #%
    @buf_longf = []
    @buf_valarg = []
    @buf_quotedv = []
  end

  def perform
    %%write exec;
    #%
  end

  def first_final
    args_first_final
  end

  def status
    puts
    puts "======"
    puts "buf_longf: #{@buf_longf.pack('c*')}" if @buf_longf
    super
  end
end

ArgsStatechart.new.parse_stdin

