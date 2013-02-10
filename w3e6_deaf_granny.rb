def intro
  print "what's your name? :>"
  @sonny = greet_grandma(gets.chomp)
end
def greet_grandma( name='Sonny' )
  print "say hi to grandma, #{name}\r\n"
  grandma_responds(gets.chomp, name)
end
def rand_year
  rand(1930..1950)
end
def grandma_responds( input, name='SONNY' )
  shout, bye = input == input.upcase, input === 'BYE'
  if input.length < 1
    puts "Enter some text so grandma can respond!"
    grandma_responds(gets.chomp,name)
  elsif bye
    puts "BYE #{name}!"
  elsif shout
    puts  "NO #{name}, NOT SINCE #{rand_year}"
    grandma_responds(gets.chomp,name)
  else
    puts "HUH?! SPEAK UP, #{name}!"
    grandma_responds(gets.chomp,name)
  end
end
#intro
greet_grandma
