def fizz_buzz( r1, r2 )
  (r1..r2).each do |n|
    puts calc_fizz_or_buzz( n )
  end
end
def calc_fizz_or_buzz( n )
  if n % 3 == 0 && n % 5 == 0
    "FizzBuzz"
  elsif n % 5 == 0
    "Buzz"  
  elsif n % 3 == 0
    "Fizz"
  else
    n
  end
end
# puts calc_fizz_or_buzz(50)
#fizz_buzz(1, 100)

-15.upto(15) do |number|
  puts calc_fizz_or_buzz(number)
end
