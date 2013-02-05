collection = [1, 2, 3, 4, 5]

def sum_array( arr )
  sum = 0
  print arr.reduce(:+)
  # print arr.inject(:+) will give the same answer

end    
puts sum_array( collection) * 2
