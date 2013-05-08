# The Really Annoying Project Manager (Yes Boss) has made a spec change!
# 
# "There will be an amoeba shape on the screen, with the others. 
# When the user clicks on the amoeba, it will rotate like the others, and play a .hif sound file. 
# The other figures like rectangle rotate around the center. 
# I want the amoeba shape to rotate around a point on one end, like a clock hand !"


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



class Amoeba < Shape

end

class Square < Shape

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
