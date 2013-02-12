class Rectangle
  attr_reader :perimeter, :area
  def initialize( length, height )
    @perimeter = 2*(length + height)
    @area = height * length
  end               
end
 
 r = Rectangle.new(25, 50)
 puts r
 
 
 puts "Area is = #{r.area}"
 
 puts "Perimeter is = #{r.perimeter}"
# >> #<Rectangle:0x9c99efc>
# >> Area is = 1250
# >> Perimeter is = 150
