# Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following. 
# Take two text files say A and B. The program should swap the contents of A and B. 
# That is after the program is executed, A should contain B's contents and B should contains A's contents.
require 'fileutils'
  
def swap_file_contents(file_one, file_two)
  return 'data sources not found' unless file_one && file_two
  FileUtils.mv "#{file_one}", "#{file_two}.tmp"
  FileUtils.mv "#{file_two}", "#{file_one}.tmp"
  Dir.entries(".").each do |x|
    /\.tmp$/.match(x) ? (FileUtils.mv "#{x}", "#{x}".gsub(/\.tmp$/, '')) : ''
  end
  return 'files swapped successfully'
end

puts swap_file_contents('test_one.txt', 'test_two.txt')