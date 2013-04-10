# challenge 1:
# Using what we have learned so far:
# I wonder if anyone could have a crack at working out the age in years and months form.
# For example “I’m 32 years and 6 months old.”
# Use the following values for age_in_seconds:
# 
# 979000000
# 2158493738
# 246144023
# 1270166272
# 1025600095

=begin
doctest: convert_age should take age in seconds and return age in years
>> convert_age( 315360000 )
=> 10.00
doctest: convert_to_days should take remainder and convert to an integer of days
>> convert_age(x=10.50)
=> [10, 182]
=end

def convert_age( age )
  #convert to years
  sprintf("%.02f" % (age.to_f/60/60/24/365))
end

def convert_to_days( val )
  ages = []
  #separate into years and remainder
  val.split('.').each{ |x| ages << x }
  #convert percent remainder into days
  days = ages[1] != 0 ? sprintf("%d" % ((365 * ages[1].to_i)/100)) : 0
  ages.pop
  ages << days.to_i
end

def print_ouput( years_and_days )
  daystring = years_and_days[1] != 0 ? "and #{(years_and_days[1]/30).ceil} month(s) " : ""
  "I'm #{years_and_days[0]} years " + daystring + "old."
end

def how_old_am_i( age )
  years_and_days = convert_to_days( convert_age( age ) )
  print_ouput( years_and_days )
end

puts how_old_am_i(331128000)
puts how_old_am_i(2158493738)
puts how_old_am_i(246144023)
puts how_old_am_i(1270166272)
puts how_old_am_i(1025600095)
