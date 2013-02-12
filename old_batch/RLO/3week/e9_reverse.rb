def reverse_it(data)
  # rev = Array.new
  rev = data.split(/\s/).reverse.join(' ')
  
=begin 
    data.split(/\s/).reverse_each do |x|
    rev << x
    end
=end
  print_reversed(rev) #Return what you really want to return
end

def prompt_for_input

  print "Type in a string to reverse it: "
  str = gets.strip #Will take care of leading and trailing white space rather than just chomp

  if str == 'EXIT'
    return
  elsif str.length < 2
    print "Nothing entered: "
    prompt_for_input
  else
    reverse_it(str)
  end
end

def print_reversed(data)
  puts data # use puts when you need a carriage return, and have your method return what it really needs to return
  prompt_for_input
end

prompt_for_input
