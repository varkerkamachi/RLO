def init
  @byes = 0
  talk_to_granny
end

def random_year(y=1930)
  return y + rand(20)
end

def granny_says(input)
  persona = 'Granny says: '

  unless @byes > 1 
    @byes -= 1 if input != 'BYE' && @byes > 0
    if input == 'BYE'
      @byes += 1
      print "#{persona} WHAT WAS THAT? COULDN'T HEAR YA SONNY! \n"
      talk_to_granny
    elsif input == input.upcase
      print "#{persona}" + " NO, NOT SINCE " + "#{random_year()}!" + "\n"
      talk_to_granny
    else
      print "#{persona}" + " HUH? SPEAK UP SONNY! " + "\n"
      talk_to_granny
    end
  else
    print "#{persona}" + " BYE, SONNY! " + "\n"
    return
  end
end

def talk_to_granny
  print 'Say something to granny: '
  str = gets.chomp
  granny_says(str)
end

init
