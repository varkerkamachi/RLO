# doctest: fizz buzz returns integers occording to rules
# >> fizzbuzz -15
# => 'FizzBuzz'
# >> fizzbuzz 0
# => 'FizzBuzz'
# >> fizzbuzz 1
# => 1
# >> fizzbuzz 2
# => 2
# >> fizzbuzz 3
# => 'Fizz'
# >> fizzbuzz 5
# => 'Buzz'
#
def fizzbuzz( n )
  results = ''
   results << "Fizz" if n % 3 == 0
   results << "Buzz" if n % 5 == 0
   results.empty? ? n : results
end

begin
  # puts calc_fizz_or_buzz(50)
  # fizz_buzz(1, 100)

  results = -15.upto(15).map do |number|
    fizzbuzz number
  end
  puts results.inspect
end if __FILE__ == $0
