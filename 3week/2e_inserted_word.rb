def get_file_contents( f )
  File.read( f )
end
def replace_contents( text, str, replacement )
  text.to_s.gsub!(str, replacement)
end
def write_contents_to_file( f, text )
  File.open(f, 'w') do |n|
    n.puts text
  end
end
def replace_file_contents( f, str, replacement )
  c = get_file_contents( f ).split('\n').each {|line| replace_contents(line, str, replacement)}
  write_contents_to_file( f, c )

end
replace_file_contents( 'week2-word.txt', 'word', 'inserted word' )
