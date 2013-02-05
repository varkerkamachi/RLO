def get_file_contents( f )
  File.read( f )
end
 
 
def replace_file_contents( f, find, replace )
  d = get_file_contents( f ).split('\n').each {|line| line.include? find ? line.gsub!(find, replace) : line}
  File.open(f, 'w') do |n|
    n.puts d
  end
end
 
 
replace_file_contents( 'week2-word.txt', 'word', 'inserted word' )
