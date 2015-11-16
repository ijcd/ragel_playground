
# line 1 "./hello_parser.rl"
=begin

# line 13 "./hello_parser.rl"

=end

require './ragel_parser_base.rb'

class HelloParser < RagelParserBase
  def initialize
    
# line 15 "./hello_parser.rb"
class << self
	attr_accessor :_hello_key_offsets
	private :_hello_key_offsets, :_hello_key_offsets=
end
self._hello_key_offsets = [
	0, 0, 1, 2, 3, 4
]

class << self
	attr_accessor :_hello_trans_keys
	private :_hello_trans_keys, :_hello_trans_keys=
end
self._hello_trans_keys = [
	101, 108, 108, 111, 104, 0
]

class << self
	attr_accessor :_hello_single_lengths
	private :_hello_single_lengths, :_hello_single_lengths=
end
self._hello_single_lengths = [
	0, 1, 1, 1, 1, 1
]

class << self
	attr_accessor :_hello_range_lengths
	private :_hello_range_lengths, :_hello_range_lengths=
end
self._hello_range_lengths = [
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_hello_index_offsets
	private :_hello_index_offsets, :_hello_index_offsets=
end
self._hello_index_offsets = [
	0, 0, 2, 4, 6, 8
]

class << self
	attr_accessor :_hello_trans_targs
	private :_hello_trans_targs, :_hello_trans_targs=
end
self._hello_trans_targs = [
	2, 0, 3, 0, 4, 0, 5, 0, 
	1, 0, 0
]

class << self
	attr_accessor :hello_start
end
self.hello_start = 5;
class << self
	attr_accessor :hello_first_final
end
self.hello_first_final = 5;
class << self
	attr_accessor :hello_error
end
self.hello_error = 0;

class << self
	attr_accessor :hello_en_main
end
self.hello_en_main = 5;


# line 21 "./hello_parser.rl"
    #%
    super
    
# line 88 "./hello_parser.rb"
begin
	 @p ||= 0
	 @pe ||=  @data.length
	 @cs = hello_start
end

# line 24 "./hello_parser.rl"
    #%
  end

  def perform
    
# line 101 "./hello_parser.rb"
begin
	_klen, _trans, _keys = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if  @p ==  @pe
		_goto_level = _test_eof
		next
	end
	if  @cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _hello_key_offsets[ @cs]
	_trans = _hello_index_offsets[ @cs]
	_klen = _hello_single_lengths[ @cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if  @data[ @p].ord < _hello_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif  @data[ @p].ord > _hello_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _hello_range_lengths[ @cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if  @data[ @p].ord < _hello_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif  @data[ @p].ord > _hello_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	 @cs = _hello_trans_targs[_trans]
	end
	if _goto_level <= _again
	if  @cs == 0
		_goto_level = _out
		next
	end
	 @p += 1
	if  @p !=  @pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 29 "./hello_parser.rl"
    #%
  end

  def first_final
    hello_first_final
  end
end

HelloParser.new.parse_stdin

