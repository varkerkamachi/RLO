def convert_to_celsius(fahrenheit)
  "%.2f" % ((fahrenheit.to_f - 32) * 5 / 9 )
end
puts convert_to_celsius(81)
# => returns:
# 27.00
