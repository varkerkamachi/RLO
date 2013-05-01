# Exercise2. Write a Rectangle class. I shall use your class as follows:
# 
# r = Rectangle.new(23.45, 34.67)
# puts "Area is = #{r.area}"
# puts "Perimeter is = #{r.perimeter}"
# 

class Rectangle
  attr_accessor :area, :perimeter
  def initialize( length, width )
    @area = length*width
    @perimeter = length*2 + width*2
  end
end

r = Rectangle.new(2, 4)

puts r.area
puts r.perimeter