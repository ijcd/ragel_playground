
# line 1 "./args_statechart.rl"
# Arg Parsing
#
# valarg "quotedv" -flags --longf="quotedv"

=begin

# line 69 "./args_statechart.rl"

=end

require './ragel_parser_base.rb'

class ArgsStatechart < RagelParserBase
  def initialize
    
# line 19 "./args_statechart.rb"
class << self
	attr_accessor :_args_actions
	private :_args_actions, :_args_actions=
end
self._args_actions = [
	0, 1, 7, 1, 8, 1, 9, 1, 
	11, 2, 0, 8, 2, 0, 9, 2, 
	1, 10, 2, 2, 10, 2, 3, 12, 
	2, 4, 7, 2, 4, 11, 2, 4, 
	12, 2, 5, 13, 2, 6, 13, 3, 
	4, 3, 12, 3, 4, 7, 12, 3, 
	4, 11, 12, 3, 7, 3, 12, 3, 
	7, 4, 12, 3, 8, 4, 12, 3, 
	9, 3, 12, 3, 9, 4, 12, 3, 
	11, 4, 12, 4, 0, 8, 4, 12, 
	4, 0, 9, 4, 12, 4, 1, 10, 
	3, 12, 4, 1, 10, 4, 12, 4, 
	2, 10, 4, 12, 4, 4, 11, 3, 
	12, 4, 4, 12, 5, 13, 4, 4, 
	12, 6, 13, 4, 7, 4, 3, 12, 
	4, 9, 4, 3, 12, 5, 1, 10, 
	4, 3, 12, 5, 4, 3, 12, 6, 
	13, 5, 4, 7, 12, 6, 13, 5, 
	4, 11, 12, 6, 13, 5, 7, 4, 
	12, 5, 13, 5, 7, 4, 12, 6, 
	13, 5, 8, 4, 12, 6, 13, 5, 
	9, 4, 12, 6, 13, 5, 11, 4, 
	12, 5, 13, 6, 0, 8, 4, 12, 
	6, 13, 6, 0, 9, 4, 12, 6, 
	13, 6, 1, 10, 4, 12, 6, 13, 
	6, 2, 10, 4, 12, 6, 13, 6, 
	4, 11, 3, 12, 6, 13, 6, 7, 
	4, 3, 12, 6, 13, 6, 9, 4, 
	3, 12, 6, 13, 7, 1, 10, 4, 
	3, 12, 6, 13
]

class << self
	attr_accessor :_args_key_offsets
	private :_args_key_offsets, :_args_key_offsets=
end
self._args_key_offsets = [
	0, 0, 7, 12, 19, 25, 32, 51, 
	70, 76, 95, 113, 131, 137, 155, 158, 
	165, 175, 178
]

class << self
	attr_accessor :_args_trans_keys
	private :_args_trans_keys, :_args_trans_keys=
end
self._args_trans_keys = [
	32, 34, 45, 9, 13, 33, 126, 32, 
	9, 13, 33, 126, 32, 34, 45, 9, 
	13, 33, 126, 32, 34, 9, 13, 33, 
	126, 32, 34, 45, 9, 13, 33, 126, 
	32, 34, 45, 9, 13, 33, 47, 48, 
	57, 58, 64, 65, 90, 91, 96, 97, 
	122, 123, 126, 32, 34, 61, 9, 13, 
	33, 47, 48, 57, 58, 64, 65, 90, 
	91, 96, 97, 122, 123, 126, 32, 34, 
	9, 13, 33, 126, 32, 34, 61, 9, 
	13, 33, 47, 48, 57, 58, 64, 65, 
	90, 91, 96, 97, 122, 123, 126, 32, 
	45, 9, 13, 33, 47, 48, 57, 58, 
	64, 65, 90, 91, 96, 97, 122, 123, 
	126, 32, 61, 9, 13, 33, 47, 48, 
	57, 58, 64, 65, 90, 91, 96, 97, 
	122, 123, 126, 32, 34, 9, 13, 33, 
	126, 32, 61, 9, 13, 33, 47, 48, 
	57, 58, 64, 65, 90, 91, 96, 97, 
	122, 123, 126, 34, 32, 126, 45, 48, 
	57, 65, 90, 97, 122, 32, 61, 9, 
	13, 48, 57, 65, 90, 97, 122, 34, 
	32, 126, 32, 61, 9, 13, 48, 57, 
	65, 90, 97, 122, 0
]

class << self
	attr_accessor :_args_single_lengths
	private :_args_single_lengths, :_args_single_lengths=
end
self._args_single_lengths = [
	0, 3, 1, 3, 2, 3, 3, 3, 
	2, 3, 2, 2, 2, 2, 1, 1, 
	2, 1, 2
]

class << self
	attr_accessor :_args_range_lengths
	private :_args_range_lengths, :_args_range_lengths=
end
self._args_range_lengths = [
	0, 2, 2, 2, 2, 2, 8, 8, 
	2, 8, 8, 8, 2, 8, 1, 3, 
	4, 1, 4
]

class << self
	attr_accessor :_args_index_offsets
	private :_args_index_offsets, :_args_index_offsets=
end
self._args_index_offsets = [
	0, 0, 6, 10, 16, 21, 27, 39, 
	51, 56, 68, 79, 90, 95, 106, 109, 
	114, 121, 124
]

class << self
	attr_accessor :_args_indicies
	private :_args_indicies, :_args_indicies=
end
self._args_indicies = [
	0, 3, 4, 0, 2, 1, 6, 5, 
	7, 1, 9, 11, 12, 8, 10, 1, 
	13, 15, 5, 14, 1, 16, 18, 19, 
	8, 17, 1, 13, 15, 20, 5, 14, 
	21, 14, 21, 14, 21, 14, 1, 23, 
	15, 25, 22, 14, 24, 14, 24, 14, 
	24, 14, 1, 26, 28, 5, 27, 1, 
	30, 15, 32, 29, 14, 31, 14, 31, 
	14, 31, 14, 1, 6, 33, 5, 7, 
	34, 7, 34, 7, 34, 7, 1, 35, 
	37, 22, 7, 36, 7, 36, 7, 36, 
	7, 1, 38, 40, 5, 39, 1, 41, 
	43, 29, 7, 42, 7, 42, 7, 42, 
	7, 1, 45, 44, 1, 46, 47, 47, 
	47, 1, 48, 50, 48, 49, 49, 49, 
	1, 52, 51, 1, 53, 55, 53, 54, 
	54, 54, 1, 0
]

class << self
	attr_accessor :_args_trans_targs
	private :_args_trans_targs, :_args_trans_targs=
end
self._args_trans_targs = [
	1, 0, 2, 14, 15, 1, 3, 2, 
	1, 3, 2, 4, 10, 5, 4, 3, 
	5, 4, 5, 6, 7, 9, 1, 5, 
	7, 8, 5, 4, 5, 1, 5, 9, 
	8, 11, 13, 3, 11, 12, 3, 2, 
	4, 3, 13, 12, 14, 1, 16, 18, 
	1, 16, 17, 2, 14, 1, 18, 17
]

class << self
	attr_accessor :_args_trans_actions
	private :_args_trans_actions, :_args_trans_actions=
end
self._args_trans_actions = [
	1, 0, 24, 1, 1, 21, 39, 30, 
	51, 115, 43, 55, 55, 131, 110, 105, 
	214, 137, 149, 155, 161, 179, 85, 228, 
	200, 193, 207, 143, 173, 63, 221, 186, 
	167, 59, 75, 125, 95, 90, 100, 47, 
	71, 120, 80, 67, 36, 33, 3, 9, 
	15, 18, 15, 27, 7, 5, 12, 5
]

class << self
	attr_accessor :args_start
end
self.args_start = 1;
class << self
	attr_accessor :args_first_final
end
self.args_first_final = 19;
class << self
	attr_accessor :args_error
end
self.args_error = 0;

class << self
	attr_accessor :args_en_main
end
self.args_en_main = 1;


# line 77 "./args_statechart.rl"
    #%
    super
    
# line 203 "./args_statechart.rb"
begin
	 @p ||= 0
	 @pe ||=  @data.length
	 @cs = args_start
end

# line 80 "./args_statechart.rl"
    #%
    @buf_longf = []
    @buf_valarg = []
    @buf_quotedv = []
  end

  def perform
    
# line 219 "./args_statechart.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
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
	_keys = _args_key_offsets[ @cs]
	_trans = _args_index_offsets[ @cs]
	_klen = _args_single_lengths[ @cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if  @data[ @p].ord < _args_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif  @data[ @p].ord > _args_trans_keys[_mid]
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
	  _klen = _args_range_lengths[ @cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if  @data[ @p].ord < _args_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif  @data[ @p].ord > _args_trans_keys[_mid+1]
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
	_trans = _args_indicies[_trans]
	 @cs = _args_trans_targs[_trans]
	if _args_trans_actions[_trans] != 0
		_acts = _args_trans_actions[_trans]
		_nacts = _args_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _args_actions[_acts - 1]
when 0 then
# line 17 "./args_statechart.rl"
		begin
 puts "GOT SHORTF: " + @data[@pe - 1].chr.to_s 		end
when 1 then
# line 19 "./args_statechart.rl"
		begin
 puts "GOT LONGF: " + @buf_longf.pack('c*') ; @buf_longf = [] 		end
when 2 then
# line 20 "./args_statechart.rl"
		begin
 @buf_longf << @data[@pe - 1] 		end
when 3 then
# line 22 "./args_statechart.rl"
		begin
 puts "GOT valarg: " + @buf_valarg.pack('c*') ; @buf_valarg = [] 		end
when 4 then
# line 23 "./args_statechart.rl"
		begin
 @buf_valarg << @data[@pe - 1] 		end
when 5 then
# line 25 "./args_statechart.rl"
		begin
 puts "GOT quotedv: " + @buf_quotedv.pack('c*') ; @buf_quotedv = [] 		end
when 6 then
# line 26 "./args_statechart.rl"
		begin
 @buf_quotedv << @data[@pe - 1] 		end
when 7 then
# line 34 "./args_statechart.rl"
		begin
 puts "in start" 		end
when 8 then
# line 39 "./args_statechart.rl"
		begin
 puts "in preflag" 		end
when 9 then
# line 45 "./args_statechart.rl"
		begin
 puts "in shortf"		end
when 10 then
# line 51 "./args_statechart.rl"
		begin
 puts "in longf"		end
when 11 then
# line 56 "./args_statechart.rl"
		begin
 puts "in eq" 		end
when 12 then
# line 61 "./args_statechart.rl"
		begin
 puts "in valarg" 		end
when 13 then
# line 66 "./args_statechart.rl"
		begin
 puts "in quotedv" 		end
# line 356 "./args_statechart.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
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

# line 88 "./args_statechart.rl"
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

