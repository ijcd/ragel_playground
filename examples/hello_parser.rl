=begin
%%{
  machine hello;

  access @;
  variable p @p;
  variable pe @pe;
  variable ts @ts;
  variable te @te;

  main := 'hello'*;
}%%
=end

require './ragel_parser.rb'

class HelloParser < RagelParser

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

