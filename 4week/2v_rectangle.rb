# doctest: Rectangle
# >> r = Rectangle.new(2.5, 3.5)
# doctest: length and width
# >> r.length
# => 2.5
# >> r.width
# => 3.5
# doctest: area
# >> r.area
# => 8.75
# doctest: perimeter
# >> r.perimeter
# => 12.0
Rectangle = Struct.new("Rectangle", :length, :width) do
  def area
    length * width
  end
  def perimeter
    2 * (length + width)
  end
end

my_rectangles = [[2, 3], [2.5, 3.5]].map do |length, width|
  Rectangle.new(length, width)
end

my_rectangles.each do |rectangle|
  puts "My rectangle with sides of #{rectangle.length}x#{rectangle.width}"
  [:area, :perimeter].each do |state|
    puts  "has #{state} of #{rectangle.send(state)} "
  end
end
