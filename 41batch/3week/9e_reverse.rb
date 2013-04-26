# Exercise9. Given a string, write a program to reverse the word order (rather than character order). 
# The String and Array classes provide methods which will be very helpful for solving this exercise.


def reverse_order( str )
  str.split(/\b/).reverse.join()
end
mystr = "Lorem ipsum dolor sit amet"
puts reverse_order(mystr)