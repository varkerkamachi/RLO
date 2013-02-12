=begin
doctest: get my new puppy
>> my_dog = Dog.new('Buffy')
doctest: make sure we can place her inside
>> my_dog.inside
=> true
doctest: and can find out if she is inside
>> my_dog.inside?
=> true
doctest: and can place her outside (we just call inside again, poor name now)
>> my_dog.inside
=> false
doctest: and when we check if she is inside, she isn't.
>> my_dog.inside?
=> false
doctest: Buffy should be able to bark freely
>> my_dog.bark
=> 'woof, woof, woof!'
=end
class Dog
  attr_accessor :name
 
  def initialize( name )
    @name = name
  end
  
  def bark
    "woof, woof, woof!"
  end
  
  def eat
    "nom nom nom"
  end
  
  def chase_cat
    "I'm running after that darned cat! Rruff rruff!"
  end
  
  def method_missing( m )
    puts "There's no method #{m} available. Try something else"
  end
  
  def inside
    @inside = !@inside
  end
  def inside?
    @inside
  end
 # doctest: teach trick
  # >> my_dog.teach_trick('dance') {'Dances'}
  # >> my_dog.dance
  # => 'Dances'
  def teach_trick(trick, &blk)
    define_singleton_method(trick, blk)
  end
end


begin
  buffy = Dog.new('Buffy')
  puts buffy.bark
  buffy.inside # Before this is done, the first time, inside is actually 'nil'
  puts buffy.bark
end if __FILE__ == $0

