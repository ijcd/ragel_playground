
# line 1 "./args_parser.rl"
=begin

# line 52 "./args_parser.rl"

=end

require './ragel_parser_base.rb'

class ArgsParser < RagelParserBase
  def initialize
    
# line 15 "./args_parser.rb"
class << self
	attr_accessor :_args_actions
	private :_args_actions, :_args_actions=
end
self._args_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8
]

class << self
	attr_accessor :_args_key_offsets
	private :_args_key_offsets, :_args_key_offsets=
end
self._args_key_offsets = [
	0, 0, 5, 9, 17, 21, 25
]

class << self
	attr_accessor :_args_trans_keys
	private :_args_trans_keys, :_args_trans_keys=
end
self._args_trans_keys = [
	45, 65, 90, 97, 122, 65, 90, 97, 
	122, 32, 45, 9, 13, 65, 90, 97, 
	122, 65, 90, 97, 122, 65, 90, 97, 
	122, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_args_single_lengths
	private :_args_single_lengths, :_args_single_lengths=
end
self._args_single_lengths = [
	0, 1, 0, 2, 0, 0, 0
]

class << self
	attr_accessor :_args_range_lengths
	private :_args_range_lengths, :_args_range_lengths=
end
self._args_range_lengths = [
	0, 2, 2, 3, 2, 2, 2
]

class << self
	attr_accessor :_args_index_offsets
	private :_args_index_offsets, :_args_index_offsets=
end
self._args_index_offsets = [
	0, 0, 4, 7, 13, 16, 19
]

class << self
	attr_accessor :_args_trans_targs
	private :_args_trans_targs, :_args_trans_targs=
end
self._args_trans_targs = [
	2, 5, 5, 0, 4, 4, 0, 3, 
	1, 3, 6, 6, 0, 4, 4, 3, 
	5, 5, 3, 6, 6, 3, 3, 3, 
	3, 0
]

class << self
	attr_accessor :_args_trans_actions
	private :_args_trans_actions, :_args_trans_actions=
end
self._args_trans_actions = [
	0, 3, 3, 0, 5, 5, 0, 11, 
	0, 11, 1, 1, 0, 0, 0, 17, 
	0, 0, 15, 0, 0, 13, 17, 15, 
	13, 0
]

class << self
	attr_accessor :_args_to_state_actions
	private :_args_to_state_actions, :_args_to_state_actions=
end
self._args_to_state_actions = [
	0, 0, 0, 7, 0, 0, 0
]

class << self
	attr_accessor :_args_from_state_actions
	private :_args_from_state_actions, :_args_from_state_actions=
end
self._args_from_state_actions = [
	0, 0, 0, 9, 0, 0, 0
]

class << self
	attr_accessor :_args_eof_trans
	private :_args_eof_trans, :_args_eof_trans=
end
self._args_eof_trans = [
	0, 0, 0, 0, 23, 24, 25
]

class << self
	attr_accessor :args_start
end
self.args_start = 3;
class << self
	attr_accessor :args_first_final
end
self.args_first_final = 3;
class << self
	attr_accessor :args_error
end
self.args_error = 0;

class << self
	attr_accessor :args_en_main
end
self.args_en_main = 3;


# line 60 "./args_parser.rl"
    #%
    super
    
# line 138 "./args_parser.rb"
begin
	 @p ||= 0
	 @pe ||=  @data.length
	 @cs = args_start
	 @ts = nil
	 @te = nil
	 @act = 0
end

# line 63 "./args_parser.rl"
    #%
  end

  def current_flags
    @data[@flag_start..@pe]
  end

  def perform
    
# line 158 "./args_parser.rb"
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
	_acts = _args_from_state_actions[ @cs]
	_nacts = _args_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _args_actions[_acts - 1]
			when 4 then
# line 1 "NONE"
		begin
 @ts =  @p
		end
# line 192 "./args_parser.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
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
	end
	if _goto_level <= _eof_trans
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
# line 13 "./args_parser.rl"
		begin

    puts "mark arg"
    @arg_start = @p
  		end
when 1 then
# line 18 "./args_parser.rl"
		begin

    puts "mark flags"
    @flag_start = @p
  		end
when 2 then
# line 23 "./args_parser.rl"
		begin

    puts "mark longopt"
    @longopt_start = @p
  		end
when 5 then
# line 50 "./args_parser.rl"
		begin
 @te =  @p+1
		end
when 6 then
# line 28 "./args_parser.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin 
    puts "Arg #{current_match(@arg_start).pack('c*')}"
   end
		end
when 7 then
# line 36 "./args_parser.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin 
    puts "Flags #{current_match(@flag_start).pack('c*')}"
   end
		end
when 8 then
# line 32 "./args_parser.rl"
		begin
 @te =  @p
 @p =  @p - 1; begin 
    puts "longopt #{current_match(@longopt_start).pack('c*')}"
   end
		end
# line 308 "./args_parser.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _args_to_state_actions[ @cs]
	_nacts = _args_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _args_actions[_acts - 1]
when 3 then
# line 1 "NONE"
		begin
 @ts = nil;		end
# line 328 "./args_parser.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
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
	if  @p ==  @eof
	if _args_eof_trans[ @cs] > 0
		_trans = _args_eof_trans[ @cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 72 "./args_parser.rl"
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

