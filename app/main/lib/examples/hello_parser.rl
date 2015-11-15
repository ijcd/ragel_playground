=begin
%%{
  machine hello;

  access @;
  variable p @p;
  variable pe @pe;
  variable ts @ts;
  variable te @te;
  variable act @act;

  main := 'hello'*;
}%%
=end

require './ragel_parser.rb'

class HelloParser < RagelParserBase
  def initialize
    %%write data;
    #%
    super
    %%write init;
    #%
  end

  def perform
    %%write exec;
    #%
  end

  def first_final
    hello_first_final
  end
end

#HelloParser.new.parse_stdin

