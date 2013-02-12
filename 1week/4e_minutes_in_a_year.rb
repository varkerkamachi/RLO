
# let's reformat this using testing...

def minutes_per_year
  (365 * 24 * 60).to_s.insert(3, ',')
end

puts minutes_per_year
puts "There are #{commify(minutes_per_year * 3)} in three years."

