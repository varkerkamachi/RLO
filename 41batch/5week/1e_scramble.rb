# Exercise1. Write a class UnpredictableString which is a sub-class of String. This sub-class should have a method called scramble() which randomly rearranges any string as follows:
# 
# >ruby unpredictablestring.rb
# daano.r n sdt a htIsw taikmgy r
# >Exit code: 0
# # the original string was: "It was a dark and stormy night."



class Scramble < String
    
  def initialize str
    @str = str
  end
  
  def scramble
    return 'Works better if you supply a word or sentence after the file name.' unless @str
    @str.split('').shuffle.reverse.join('')
  end
      
end


s = Scramble.new ARGV[0]
puts s.scramble