require 'pp'
require 'io/console'

class RagelParser
  def initialize
    @data = []
    @stack = []
    @cs = 0
  end

  def feed(input)
    @data += input.unpack("c*")
    @pe = @data.length
    perform
    status
  end

  def final?
    @cs >= first_final
  end

  def first_final
    Float::INFINITY
  end

  def status
    puts <<JSON
{
  "data": "#{@data}",
  "chars": "#{data_chars}",
  "string": "#{data_chars.join}",
  "cs": #{@cs},
  "p": #{@p},
  "pe": #{@pe},
  "ts": #{@p},
  "te": #{@pe},
  "stack": "#{@stack.pretty_inspect.chomp}",
  "final?": #{final?}
}
JSON
  end

  def data_chars
    @data.map(&:chr)
  end

  def parse_stdin
    feed('')
    while c = STDIN.getch
      exit(1) if c == "\u0003"
      feed(c)
    end
  end
end
