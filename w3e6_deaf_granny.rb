def intro
  print "what's your name?\n"
  greet_grandma(gets.chomp)
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
    print "Enter some text so grandma can respond!\n"
    grandma_responds(gets.chomp,name)
  elsif bye
    print "BYE #{name}!\n"
  elsif shout
    print "NO #{name}, NOT SINCE #{rand_year}\n"
    grandma_responds(gets.chomp,name)
  else
    print "HUH?! SPEAK UP, #{name}!\n"
    grandma_responds(gets.chomp,name)
  end
end
#intro
greet_grandma
