# Exercise5. Difficulty level: MEDIUM Write a one-line Ruby script that displays 
# on the screen all the files in the current folder as well as everything in all its sub folders, in sorted order. 
# Make use of Dir.glob method as follows:
# Dir.glob('**/*')
# 
# Name this program inventory.rb. Create an inventory file by typing the following at the command prompt:
# ruby inventory.rb > old-inventory.txt
# 
# After a few days, when some files would have been added / deleted from this folder, run the program again like:
# ruby inventory.rb > new-inventory.txt
# 
# Now, write another Ruby script that displays on the screen all the files that have been added in this folder 
# # since the time the old-inventory.txt was created.


#write contents to a file... 
# depends on where this is called as to how deep it recurses and therefore how many entries are in the resulting inventory
# not sure how to do this yet - wanted to use argv and capture the name of the file for storage
# def check_inventory( file_arg )
  # if Dir.entries.include? file_arg
  #   update_inventory file_arg
  # else
  #   write_inventory file_arg
  # end
# end
# puts check_inventory ARGV[0]


Dir.glob('**/*').sort.each{ |x| puts File.directory?(x) ? "#{x}\r\n" : "  #{x}\r\n" }

#File.mtime



