=begin
doctest: build a brand-spankin' new rectangle
>> r = Rectangle.new(4,8) 
=> r
doctest: find perimeter
>> r.perimeter
=> 24
doctest: find area
>> r.area
=> 32
=end

class Rectangle
  attr_reader :perimeter, :area
  def initialize( length, height )
    @perimeter = 2*(length + height)
    @area = height * length
  end               
end
 
 r = Rectangle.new(25,50)
 puts r
 
 
 puts "Area is = #{r.area}"
 
 puts "Perimeter is = #{r.perimeter}"
