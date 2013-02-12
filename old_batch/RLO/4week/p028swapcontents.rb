def files_swap_contents(file_one, file_two)
  msg = 'data sources not found' unless file_one && file_two
  data_one, data_two, f_one, f_two = ''
  f_one, f_two = File.open(file_one, "r"), File.open(file_two, "r")
  data_one, data_two = f_one.readlines, f_two.readlines
  f_one.close
  f_two.close
  r_one, r_two = File.open(file_one, "w"), File.open(file_two, "w")
  if(r_one.write(data_two)) 
    msg = ' first file swapped successfully ' 
  end
  if(r_two.write(data_one)) 
    msg += ' second file swapped successfully ' 
  end
  r_one.close
  r_two.close
  return msg
end

puts files_swap_contents('text1.txt', 'text2.txt')