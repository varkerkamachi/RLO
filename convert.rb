def convert_to_celsius(fahrenheit)
  "%.2f" % ((fahrenheit-32) * 5 / 9 )
end

puts convert_to_celsius(95)

