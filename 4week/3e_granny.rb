# Modify your Deaf Grandma program (Week 3 / Exercise6): 
# What if grandma doesn't want you to leave? 
# When you shout BYE, she could pretend not to hear you. 
# Change your previous program so that you have to shout BYE three times in a row. 
# Make sure to test your program: if you shout BYE three times, but not in a row, 
# you should still be talking to grandma. You must shout BYE three separate times. 
# If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to hear you (and not count it as a BYE).

=begin
doctest: start a new conversation
>> g = Granny.new
=> g
doctest: counter starts at 0
>> g.counter
=> 0
doctest: counter increases by one
>> g.edit_counter('+')
=> 1
doctest: counter decreases by one
>> g.edit_counter('-')
=> 0
>> g.edit_counter('+')
doctest: we can return the size of the counter
>> g.get_counter
=> 1
>> g.edit_counter
doctest: we can return the size of the counter
>> g.get_counter
=> 1

=end

class Granny
  attr_accessor :counter
  def initialize
    @counter = 0
    puts "Hi, you're about to talk to your deaf grandma. \r\nIf you get frustrated and want to leave, you must shout BYE three separate and consecutive times.\r\nHave fun talking to granny!"
    greet_grandma
  end
  
  def greet_grandma
    puts "Say hi to grandma!"
    show_prompt 
    grandma_responds(gets.chomp)
  end

  def rand_year
    rand(1930..1950)
  end

  def grandma_responds( input )
    input === 'BYE' ? respond_to_bye : grandma_answers(input)
  end

  def grandma_answers( input )
    if input.length < 1
      puts "Enter some text so grandma can respond!"
    elsif input == input.upcase
      puts "NO, NOT SINCE #{rand_year}"
    else
      puts "HUH?! SPEAK UP, Sonny!"
    end
    edit_counter('-')
    show_prompt
    grandma_responds(gets.chomp)
  end
  
  def respond_to_bye
    msgs = [
      "What was that, I couldn't quite hear you?", 
      "Sorry Sonny, but I'm hard of hearing - what'dya say again?", 
      "The war, eh? I s'pose, if you wanna hear about it...", 
      "Did you say something Sonny?"
      ]
    if get_counter < 3
      edit_counter('+')
      puts msgs[rand(msgs.length)]
      show_prompt
      grandma_responds(gets.chomp)
    else
      puts 'Yeah, I guess you young folk have got places to be. Bye Sonny!'
    end
  end
  
  def show_prompt
    print ">> "
  end
  
  def get_counter
    @counter
  end
  
  def edit_counter( var='' )
    if var === "+"
      @counter += 1
    elsif @counter === 0
      @counter = 0
    else
      @counter -= 1
    end
  end

end # end class

g = Granny.new

# puts g.counter.length



