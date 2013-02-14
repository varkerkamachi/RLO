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
doctest: Checking for non-integer results
>> r = Rectangle.new(2.5, 3.5)
doctest: perimeter
>> r.perimeter
=> 12.0
doctest: area
>> r.area
=> 8.75
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
