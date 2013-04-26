# Write a Ruby program that prints the numbers from 1 to 100. 
# But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

def print_fuzzbuzz_multiples_list()
  results = (1..40).to_a
  results.each { |n|
    # case n
    # # when n % 15 == 1
    # #   results[] += 'FizzBuzz'
    # when (n % 5 === 1)
    #   results.push('Buzz')
    # when (n % 3 === 1)
    #   results.push('Fizz')
    # end
    # 
    if(n % 15 == 1)
      n.to_s.replace('FizzBuzz')
    elsif(n % 5 == 1)
      n.to_s.replace('Buzz')
    elsif(n % 3 == 1)
      n.to_s.replace('Fizz')
    else
      results.push(n)
    end
  }

end

puts print_fuzzbuzz_multiples_list