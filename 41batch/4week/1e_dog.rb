# Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:
# bark(), eat(), chase_cat()
# I shall create the Dog object as follows:
# d = Dog.new('Leo')
# 

class Dog
  attr_accessor :name
  
  def initialize( name = nil )
    @name = name
  end
  
  def bark
    "#{@name} says woof woof"
  end
  
  def eat
    "#{@name} scarfs down some shrimp burgers"
  end
  
  def chase_cat
    "#{@name} runs after the cat"
  end
  
end

d = Dog.new('leo')

puts d.name

puts d.bark

puts d.eat

puts d.chase_cat