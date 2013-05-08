# Exercise2. This exercise thanks to Kathy Sierra. 
# Once upon a time in a software shop, two programmers were given the same spec and told to "build it". 
# The Really Annoying Project Manager forced the two coders to compete, by promising that whoever delivers 
# first gets one of those cool Aeron chairs all the Silicon Valley guys have. 
# The spec. There will be shapes on a GUI, a square, a circle and a triangle. 
# When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) and 
# play an AIF sound file specific to that particular shape. Go for it guys and show me your code.
# 
# Note: This exercise is about inheritance, method overriding and method overloading not about UI.

class Shape
  def initialize
    @audio_file = self.class.to_s.downcase + ".aif"
    @name = self.class.to_s.downcase
  end
  
  def rotate direction='clockwise', degrees=360
    "#{self} is rotating #{direction} #{degrees} degrees."
  end

  def to_s
    @name
  end
  
  def play_sound audio_file=@audio_file
    "Playing sound file #@audio_file"
  end

  def click
    puts rotate
    puts play_sound
  end
end


class Square < Shape

end

class Triangle < Shape

end

class Circle < Shape

end


my_shapes = [Square.new, Triangle.new, Circle.new]

my_shapes.each do |shape|
  shape.click
end


