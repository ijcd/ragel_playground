require 'celluloid'
require './hello_parser.rb'

class ParserActor
  include Celluloid

  def initialize(parser_class)
    @parser = parser_class.send(:new)
  end

  def parse_stdin
    @parser.feed('')
    while c = STDIN.getch
      exit(1) if c == "\u0003"
      puts @parser.feed(c)
    end
  end

  def feed(str)
    @parser.feed(str)
  end
end

name = rand(99999999).to_s
supervisor = ParserActor.supervise_as name, HelloParser

puts Celluloid::Actor[name].feed('h')
puts Celluloid::Actor[name].feed('e')
puts Celluloid::Actor[name].feed('l')
puts Celluloid::Actor[name].feed('l')
puts Celluloid::Actor[name].feed('o')

