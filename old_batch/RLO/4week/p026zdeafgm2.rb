def init_granny_convo
  @byes = 0
  talk_to_granny
end

def random_year(y=1930)
  y + rand(20)
end

def granny_says(input)
  persona = 'Granny says: '
  @byes = 0 if input != 'BYE' && @byes > 0
  unless @byes >= 2 
    if input == 'BYE'
      @byes += 1
      print "#{persona} WHAT WAS THAT? COULDN'T HEAR YA SONNY!\n"
    elsif input == input.upcase
      print "#{persona}" + " NO, NOT SINCE " + "#{random_year()}!\n"
    else
      print "#{persona}" + " HUH? SPEAK UP SONNY!\n"
    end
    talk_to_granny
  else
    print "#{persona}" + " BYE, SONNY!\n"
    return
  end
end

def talk_to_granny
  print 'Say something to granny: '
  str = gets.chomp
  if str.length < 1
    talk_to_granny
  else
    granny_says(str)
  end
end

init_granny_convo
