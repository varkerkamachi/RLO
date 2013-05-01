# Exercise1A (optional). Here's an additional challenge for all of you who already finished Exercise1: 
# Write a method teach_trick which allows you to teach tricks to specific instances of the dog class like this:

# d = Dog.new('Lassie')
# d.teach_trick(:dance) { "#{@name} is dancing!" }
# puts d.dance
# d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
# puts d.poo
# puts
# d2=Dog.new('Fido')
# puts d2.dance
# d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
# puts d2.laugh
# puts d.laugh
# puts
# d3=Dog.new('Stimpy')
# puts d3.dance
# puts d3.laugh
# # >> Lassie is dancing!
# # >> Lassie is a smelly doggy!
# # >>
# # >> Fido doesn't know how to dance!
# # >> Fido finds this hilarious!
# # >> Lassie doesn't know how to laugh!
# # >>
# # >> Stimpy doesn't know how to dance!
# # >> Stimpy doesn't know how to laugh!
#  
# 
# You will also have to deal with the fact that people may get confused 
# and will tell a certain dog to perform a trick it hasn't learned yet...

class Dog
  attr_accessor :name
  def initialize( name = nil )
    @name = name
    @trickstate = []
  end
  
  def teach_trick trick
    #passing in a proc..?
    #@trickstate[] = trick
    trick.call(self.name)
  end
  
  # def poo
  #   "#{@name} is a smelly doggy!"
  # end
  
  def dance
    if( @trickstate.include? method(name))
      puts "#{@name} is dancing!"
    else
      puts "#{@name} doesn't know how to dance!"
    end
  end
  poo = lambda { |n| "#{n} is a smelly doggy!" }
  # :laugh = lambda { "#{@name} finds this hilarious!" }
  #private @trickstate
end

d = Dog.new('ralphie')
# puts d.inspect
puts d.name
#puts d.dance
# puts d.dance
d.teach_trick(:poo)
puts d.poo
