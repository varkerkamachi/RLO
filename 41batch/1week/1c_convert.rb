# Write a program that asks for user input, then changes that input from one temperature unit to another based upon the user's wishes.
# Write code to handle user input. That code must include a succinct explanation of how the user should type the values so the program 
# can understand if it's meant to convert from Celsius to Fahrenheit or vice-versa. 
# It will then proceed to "parse" the input and obtain two "values": "conversion to make" and "value to use", 
# where the first means to convert from Celsius to Fahrenheit or vice-versa and the second is the temperature value to be converted.
# Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion process, assuming that the temperature value is always passed as a Float. 
# This is to "prevent" you from writing code to validate the argument. But that doesn't mean you shouldn't validate the value. 
# Meaning that you shouldn't worry if the argument is or is not a Float - assume it is - and instead worry if the value is within an "acceptable range". Consider absolute zero.
# If you want to take this challenge even further, then make the conversion program also able to handle other units of temperature (such as Kelvin, Rankine, etc).
# Note: the intention here is not to have you code lines and lines of statements but to think in out-of-the-box, abstract ways:
# Tip 1: Kelvin is just an "adjustment" of another calculation. ;-)
# Tip 2: A conversion of a value can be seen as unit_from, unit_to, value_to_convert. An abstract example would be to convert 100 from Euros to US Dollars.

module TempConverter
  TEMPS = ['celsius', 'farenheit', 'kelvin', 'rankine']

  def convert( val, unit_from, unit_to )
    units << unit_from << unit_to
    formula = get_formula( check_scale_validity( units ) )
  end

  def get_formula( units )
    
  end
  
  def check_scale_validity( units )
    units.each{ |x|
      unless TEMPS.include?(x.lowercase) throw_error(0)
      }
  end
  #c=>f(val * 9)/5 + 32
  #f=>c(val - 32) * 5/9
  def throw_error( n )
    case n
    when 0
      puts "There's no conversion between those values"
    when 1
      puts "That value is too low or too high"
    else
      puts "That's an error, BAM!"
    end
    return false
  end
  
end


class ConversionApp
  include TempConverter
  
end

