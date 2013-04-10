# Write a Ruby program that displays how old I am, if I am 979000000 seconds old. 
# Display the result as a floating point (decimal) number to two decimal places (for example, 17.23)

=begin
doctest: calculate_age converts an age from seconds into years
>> calculate_age(315360000)
=> 10
doctest: format_age displays age as a floating point number
>> format_age(10)
=> 10.00
=end

def calculate_age( age )
  age = age/60/60/24/365
  #format_age( age )
end

def format_age( age )
  sprintf("%.02f" % age)
end

puts format_age( calculate_age(979000000) )
