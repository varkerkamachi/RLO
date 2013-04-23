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
  c = get_file_contents( f ).split('\n').each {|line| replace_contents(line, /\b(#{str})\b/, replacement)}
  write_contents_to_file( f, c )
end
replace_file_contents( 'word.txt', 'word', 'inserted word' )


def recreate_initial_file( file, og_file )
  return 'file already exists' if Dir.entries(Dir.getwd).include?(file)
  f = File.new(file, 'w+')
  c = get_file_contents( og_file ).split('\n').each {|line|
    f.write(line )
  }
  f.close
end


#puts recreate_initial_file( 'reset.txt', 'word.txt' )
