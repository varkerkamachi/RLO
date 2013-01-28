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


def convertAge(age_in_seconds)
  #convert to years
  ageInYears = (age_in_seconds.to_f/60/60/24/365)
  #separate into years and remainder
  age = ageInYears.to_s.split('.')[0], ageInYears.to_s.split('.')[1].slice(0,2)
  #convert percent remainder into days
  unless age[1] == 0
    days = (365 * age[1].to_i)/100.to_f
  end
  #output message
  printMessage(age[0], days)
end

def printMessage(years, days)
  puts "I'm #{years} years" +
    " and #{(days/30).ceil} month(s) old."
end
convertAge(979000000)
convertAge(2158493738)
convertAge(246144023)
convertAge(1270166272)
convertAge(1025600095)
