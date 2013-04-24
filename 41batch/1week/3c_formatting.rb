# =begin
#  multiplication_table (integer, heading = '', decorate = false)
#   returns a string object.
# =end
# table1 = multiplication_table 9, 'Times Table to 9', true
# table2 = multiplication_table 20
# puts table1
# puts
# puts table2
# 
# Here are the rules:
# 
# Required: 
# method needs to provide an object. Don’t just print to screen, it isn’t the goal.
# The method needs to accept an Integer.
# Required: 
# the table object should have uniform spacing throughout the table.
# Optional: 
# You should be able to decorate the table with and without a heading and with and without decoration when asked for.
# Preferred but optional: 
# The heading may be Centered to the table, and the decoration (if the decoration is there). 
# The decoration should hang one space (on each side) over the area taken by the numeric matrix. 
# The heading should be on or within the same guide. (As shown in the 9x9 grid).
# So, you may note that the method only takes one number. That is so there is no question about a YxY grid.
# 
# The goal here is having uniform columnar formatting, regardless of the result of the (valid) input. Everything else is ‘extra’ (and fun!).
# 
# Oh, only two samples were given, but, it should be able to handle decoration without heading, or heading without decoration, or both (as shown) or 
# neither (as also shown). This part of it is the extra fun part.
# 
# Oh, a side note… You CAN copy and paste the sample solution for the 9x9 grid, and use that as test data, exactly as posted here 
# (taking into account the “\n” that must exist as the last character of each line.
# 
# That is if you are using minitest (built into Ruby 1.9), or Test::Unit or Rspec or something other.
# 


def multiplication_table( integer, heading = '', decorate = false )
  output, decoration, integer_set, col_width = '', '', [], (integer.to_i * integer.to_i).to_s.length
  integer_set = (1..integer.to_i * integer.to_i).to_a
  
  decoration = '=' * (col_width * integer + integer * 2) + "\n" if decorate
  output += get_heading( heading )
  output += decoration
  integer_set.each do |x|
    output += sprintf(" %#{col_width}d ", x)
    integer_set.include?(x/integer.to_f) ? output += "\n" : output += ''
  end
  output += decoration
  return output
end

def get_heading( heading = '' )
  heading.empty? ? nil : "\n" + heading + "\n"
end

puts multiplication_table( 8, heading = '***Jennifer***', decorate = true )