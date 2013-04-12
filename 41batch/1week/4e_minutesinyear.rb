# Exercise4. Write a Ruby program that tells you how many minutes there are in a year (do not bother right now about leap years etc.).

=begin
doctest: minutes_per_year should calculate the number of minutes in a year
>> minutes_per_year
=> 525600
=end

def minutes_per_year
  365 * 24 * 60
end

puts minutes_per_year
