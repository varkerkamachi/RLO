def intro
  print "what's your name? :>"
  @sonny = gets.chomp
end
def greet_grandma( name='Sonny' )
  print "say hi to grandma, #{name} :>"
  @sonny_says = grandma_responds(gets.chomp)
end
def rand_year
  rand(1930..1950)
end
# doctest: Grandma responds to "Hello"
# >> grandma_responds('HELLO').include?('NOT SINCE')
# => true
# >> grandma_responds('hello').include?('HUH')
# => true
# >> grandma_responds('BYE').include? 'BYE'
# => true
def grandma_responds( input, name='SONNY' )
  if input.empty?
    "Enter some text so grandma can respond!"
  elsif input == 'BYE'
    "BYE #{@sonny}!"
  elsif input == input.upcase
    "NO #{@sonny}, NOT SINCE #{rand_year}"
  else
    "HUH?! SPEAK UP, #{@sonny}!"
  end
end

begin
  puts intro
  puts greet_grandma
end if __FILE__ == $0
