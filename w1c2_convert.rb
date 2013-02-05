# Write a program that asks for user input, then changes that input from one temperature unit to another based upon the user's wishes.
# Write code to handle user input. 
# That code must include a succinct explanation of how the user should type the values so the program 
# can understand if it's meant to convert from Celsius to Fahrenheit or vice-versa. 
# It will then proceed to "parse" the input and obtain two "values": "conversion to make" and "value to use", 
# where the first means to convert from Celsius to Fahrenheit or vice-versa and the second is the temperature value to be converted.
# Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion process, 
# assuming that the temperature value is always passed as a Float. This is to "prevent" you from writing code to validate the argument. 
# But that doesn't mean you shouldn't validate the value. 
# Meaning that you shouldn't worry if the argument is or is not a Float - assume it is - 
# and instead worry if the value is within an "acceptable range". Consider absolute zero.
# If you want to take this challenge even further, then make the conversion program also able to handle 
# other units of temperature (such as Kelvin, Rankine, etc).
# 
# Note: the intention here is not to have you code lines and lines of statements but to think in out-of-the-box, abstract ways:
# Tip 1: Kelvin is just an "adjustment" of another calculation. ;-)
# Tip 2: A conversion of a value can be seen as unit_from, unit_to, value_to_convert. 
# An abstract example would be to convert 100 from Euros to US Dollars.
# 
class TemperatureConverter
  attr_accessor :from_temp, :to_temp, :value, :vals_to_convert, :user_response, :x, :answer, :user_choices
  TEMP_SCALES = ['celsius', 'farenheit', 'kelvin']

  def initialize( from_temp = 'farenheit', to_temp = 'celsius', value = 0 )
    @from_temp = from_temp
    @to_temp = to_temp
    @value = value
    greet_user
  end

  def greet_user
    puts "Hello there. Would you like to convert temperatures?"
    answer = gets.chomp
    answer_outcome = parse_response( 'greet_user', answer )
    if answer_outcome === true
      return print_temp_prompt
    else
      return say_goodbye
    end
  end

  def say_goodbye
    puts 'Ok, too bad. bye then!'
    # return with nothing there should return nil... wouldn't puts do the same?
    return
  end
  
  def parse_response( key, val, * )
    #key is method input is coming from, val is user input
    if key === 'greet_user'
      if val.length == 3 && val.match(/Y|y+E|e+S|s/)
        print "Great. Let's get started."
        response = true
      else
        response = false
      end
    elsif key === 'print_temp_prompt'
      if TEMP_SCALES.include? val
        response = true
      else
        response = false
      end
    elsif key === 'get_temp_input'
      if( val.match(/[a-zA-Z\W].+/) )
        response = false
      elsif( val.match(/\d{1,4}/) )
        response = true
      else
        response = false
      end
    else
      if val.length == 3 && val.match(/Y|y+E|e+S|s/)
        print "Great! Just a sec....\r\n"
        response = true
      else
        response = false
      end   
    end
    return response
  end

  def print_temp_prompt( x = 0 )
    x += 1
    if( x == 1 )
      print "Please put the scale you'd like to convert from (ex: celsius) #{@count}\r\n"
    elsif( x == 2 )
      print "Ok, and the scale to convert to?\r\n"
    else
      get_temp_input( @vals_to_convert )
    end
    answer = gets.chomp
    answer_outcome = parse_response( 'print_temp_prompt', answer, x )
    if answer_outcome === true
      # if @vals_to_convert.length > 0 && @vals_to_convert.include? answer
      #   opt_out( print_temp_prompt, x-1 )
      # else
      store_temp( x, answer )
      print_temp_prompt( x )
      # end
    else
      opt_out( print_temp_prompt, x-1 )
    end
  end

  def get_temp_input( arr )
    print "Ok, so we're converting from #{@vals_to_convert[0]} to #{@vals_to_convert[1]}. What value would you like to convert?\r\n"
    answer = gets.chomp
    answer_outcome = parse_response( 'get_temp_input', answer, x )
    if answer_outcome === true
      store_temp( 3, answer.to_f )
      run_conversion(@vals_to_convert)
    else
      self.opt_out( get_temp_input, x)
      # print "Hey, that's not a number! Try again using numbers only?\r\n"
      # gets.chomp.match(/Y|y+E|e+S|s/) ? get_temp_input( arr ) : say_goodbye
    end
      #store_temp( 3, arr )
  end
  # 
  def store_temp( x, temp_scale )
    #print "x: #{x}, temp_scale= #{temp_scale}"
    if( x === 1 )
      @vals_to_convert = Array.new
      @vals_to_convert << temp_scale
    else
      @vals_to_convert << temp_scale
    end
    return @vals_to_convert
  end

=begin
doctest: run_conversion tests
doctest: 
=end
  def run_conversion( arr )
    converted_answer = ''
    if @vals_to_convert[0] === 'celsius' && @vals_to_convert[1] === 'farenheit'
      converted_answer = "#{@vals_to_convert[2]} #{@vals_to_convert[0]} is #{(@vals_to_convert[2] * 9)/5 + 32} #{@vals_to_convert[1]}"
    elsif @vals_to_convert[0] === 'farenheit' && @vals_to_convert[1] === 'celsius'
      converted_answer = "#{@vals_to_convert[2]} #{@vals_to_convert[0]} is #{(@vals_to_convert[2] - 32) * 5/9} #{@vals_to_convert[1]}"
    elsif @vals_to_convert[0] === 'celsius' && @vals_to_convert[1] === 'kelvin'
      converted_answer = "#{@vals_to_convert[2]} #{@vals_to_convert[0]} is #{@vals_to_convert[2]+ 273.15} #{@vals_to_convert[1]}"
    elsif @vals_to_convert[0] === 'farenheit' && @vals_to_convert[1] === 'kelvin'
      converted_answer = "#{@vals_to_convert[2]} #{@vals_to_convert[0]} is #{(@vals_to_convert[2] - 32) * 5/9 + 273.15} #{@vals_to_convert[1]}"
    elsif @vals_to_convert[0] === 'kelvin' && @vals_to_convert[1] === 'celsius'
      converted_answer = "#{@vals_to_convert[2]} #{@vals_to_convert[0]} is #{@vals_to_convert[2] - 273.15} #{@vals_to_convert[1]}"
    else
      converted_answer = "#{@vals_to_convert[2]} #{@vals_to_convert[0]} is #{(@vals_to_convert[2] - 273.15) * 1.80 + 32 } #{@vals_to_convert[1]}"
    end
    print converted_answer
    print "\r\nWould you like to do another conversion?"
    answer = gets.chomp
    answer_outcome = parse_response( 'run_conversion', answer, 0 )
    if answer_outcome === true
      self.x = 0
      @vals_to_convert = ''
      print_temp_prompt
    else
      say_goodbye
    end
  end

  def opt_out( method, arg )
    print "\r\nI don't recognize that one. Care to try again?\r\n"
    if( gets.chomp.match(/Y|y+E|e+S|s/) )
      method( "#{arg}" )
    else
      say_goodbye
    end
  end
  
  def convert_temps ( arr )
    print "convert: arr[2]\r\nfrom #{arr[0]}\r\nto #{arr[1]}"
    say_goodbye
  end

end # end class
# t = TemperatureConverter.new

def parse_response( key, val, * )
  #key is method input is coming from, val is user input
  if key === 'greet_user'
    val.length == 3 && val.match(/Y|y+E|e+S|s/)
  elsif key === 'print_temp_prompt'
    TemperatureConverter::TEMP_SCALES.include? val
  elsif key === 'get_temp_input'
    if( val.match(/[a-zA-Z\W].+/) )
      false
    else
      ( val.match(/\d{1,4}/) )
    end
  else
    false
  end
end   


parse_response('greet_user', 'no')             # => false
parse_response('greet_user', 'yes')            # => #<MatchData "s">
parse_response('print_temp_prompt', 'celsius') # => true
parse_response('get_temp_input', '98')         # => #<MatchData "98">
parse_response('get_temp_input', '98.6')       # => false

