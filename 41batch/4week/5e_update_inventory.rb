def check_inventory( file_arg='' )
  if !File.exist? file_arg || File.mtime(file_arg) > Time.new
    puts "original inventory not found or not yet created :o"
  else
    new_files = []
    Dir.glob('**/*').sort.each{ |x| new_files += [x] }
    
    puts "Removed or missing files:\r\n"
    File.open(file_arg, "r"){|f|
      f.each_line{ |l|
        l.strip!
        print File.exist?( l ) === false ? "#{l}\r\n" : ''
        new_files.include? l ? new_files.delete(l) : ''
      }
    }
    
    puts "\r\nNew or added files:\r\n"
    new_files.each{|x| p x }
  end
end

check_inventory( ARGV[0] )