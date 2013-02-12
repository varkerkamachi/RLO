class Rectangle
  attr_accessor :width, :height, :perimeter, :area
  def initialize(width, height)
    @width = width
    @height = height
    @perimeter = 2 * (width + height)
    @area = width * height
  end
=begin
### Find another way to raise an error for dimentions that make it either
### a point or unreal. (imaginary)
  def area
    return 'area cannot be calculated' unless @width > 0 && @height > 0
    @width * @height
  end

  def perimeter
    return 'perimeter cannot be calculated' unless @width > 0 && @height > 0
    (@width * 2) + (@height * 2)
  end
=end

end

n = Rectangle.new(4,1)

# The following running code shows ZERO context, and so is confusing when you
# run it unless you become familiar with the content.

puts n.perimeter
n.width = 10
puts n.height
puts n.perimeter
puts n.area
