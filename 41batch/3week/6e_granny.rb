# Exercise6. Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), 
# she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). 
# If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! 
# To make your program really believable, have grandma shout a different year each time; 
# maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.
# 
# For example:
# 
# You enter: Hello Grandma
# Grandma responds: HUH?! SPEAK UP, SONNY!
# You enter: HELLO GRANDMA
# Grandma responds: NO, NOT SINCE 1938!


def prompt( input= '')
  print input.rstrip + " "
  responds_to gets.chomp
end

def responds_to( input )
  response = ''
  unless(/[a-z0-9]/ =~ "#{input}")
    response = "NO, NOT SINCE #{(1930..1950).to_a.shuffle[0]}"
  else
    response = 'HUH?! SPEAK UP, SONNY!'
  end
  puts response
  puts 'Try again?'
  to_continue gets.chomp
end

def to_continue( input = '' )
  return if input === 'no'
  prompt "Say hi to granny!"
end

prompt "Say hi to granny!"

