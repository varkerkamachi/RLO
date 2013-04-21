# Can you do something so that if it isn’t simply 3 lines, or 1000 lines, your output ends up something like this? 
# (leading spaces or 0’s acceptable)
# Line    1: output line    1
# Line    9: output line    9
# Line  100: output line  100
# Line 1000: output line 1000
# 
# Where the : remains aligned as well as the first letter of the line?

def print_text_by_line( txt )
  arr, count, output, spacing = [], 0, '', ''
  txt.each_line('.') {|n|
    arr << n.strip
  }
  
  arr.each { |n|
    count += 1
    spacing = (arr.size.to_s.length - count.to_s.length) + count.to_s.length + 1
    output += "Line" + sprintf("% 0#{spacing}d", count)  + ': ' + n + "\n"
  }
  output
end

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, felis quis gravida tempus, turpis sapien iaculis magna, eget blandit erat velit non mi. Nulla facilisi. Nunc sit amet metus sit amet nisl elementum ultrices. Aenean egestas sollicitudin porta. Vivamus neque eros, convallis sed ornare id, convallis nec lacus. Aenean mattis justo pretium risus rhoncus et malesuada elit dignissim. Vestibulum sed mauris dui. Vestibulum porta, turpis in sollicitudin faucibus, sem sem bibendum est, nec sollicitudin arcu urna eget tortor. Vestibulum quis ullamcorper dolor. Praesent vestibulum accumsan vulputate. Mauris pharetra imperdiet gravida. Integer ullamcorper accumsan commodo. Phasellus sodales blandit diam, a sollicitudin enim fringilla vitae. Curabitur lectus elit, aliquet laoreet luctus quis, pretium ut sapien.
Suspendisse nec lorem id est convallis egestas nec eu arcu. Vivamus vitae orci leo, at consectetur leo. Duis hendrerit placerat mattis. Pellentesque gravida eleifend arcu, sit amet dapibus sapien gravida eget. Quisque consectetur, velit eu accumsan mollis, nibh tellus venenatis nisl, eu ullamcorper quam neque ac mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id sagittis quam. Etiam tincidunt tellus a nibh sollicitudin ut condimentum lectus semper. Praesent a eros augue. Vestibulum luctus, mauris sed sodales pulvinar, urna neque lacinia elit, et ultrices ante orci eget nisl. Mauris eu odio at tellus convallis imperdiet.
Pellentesque a ipsum tellus. Vivamus posuere ante vitae sapien sodales molestie. Vestibulum eget imperdiet ante. Maecenas eu mauris a justo rutrum porta. Fusce in metus diam. Nam molestie auctor dolor non accumsan. Phasellus condimentum eros quis nulla luctus sed laoreet nisl cursus. Nulla scelerisque elementum scelerisque. Ut sagittis nulla et tortor pulvinar aliquet. Donec leo leo, sagittis in feugiat eget, auctor sed tortor.
Etiam quis elit lacus. In id velit tortor, sit amet accumsan justo. Vestibulum eros augue, venenatis in porta eu, auctor vitae lectus. Vestibulum lacus lectus, ullamcorper in interdum eget, fermentum eget purus. Phasellus in tortor ut massa bibendum vestibulum nec ut massa. Donec elementum lacinia lorem, sed vulputate dolor faucibus id. Donec arcu tortor, dapibus in laoreet ut, dignissim tincidunt neque. Nunc consectetur lorem nec sem sodales cursus.
Suspendisse congue commodo velit, et volutpat urna molestie a. Nulla facilisi. Morbi vestibulum ante eget lectus posuere eu molestie lectus fringilla. Suspendisse vel odio sapien, non egestas dolor. Suspendisse leo risus, consequat quis ultrices vitae, posuere ut orci. Aliquam condimentum, elit vitae ornare bibendum, metus velit ornare ligula, nec porta tortor tortor eu sem. Sed tristique neque in felis gravida ultrices. Integer vitae neque leo, eget interdum orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus quis odio quis arcu adipiscing malesuada.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, felis quis gravida tempus, turpis sapien iaculis magna, eget blandit erat velit non mi. Nulla facilisi. Nunc sit amet metus sit amet nisl elementum ultrices. Aenean egestas sollicitudin porta. Vivamus neque eros, convallis sed ornare id, convallis nec lacus. Aenean mattis justo pretium risus rhoncus et malesuada elit dignissim. Vestibulum sed mauris dui. Vestibulum porta, turpis in sollicitudin faucibus, sem sem bibendum est, nec sollicitudin arcu urna eget tortor. Vestibulum quis ullamcorper dolor. Praesent vestibulum accumsan vulputate. Mauris pharetra imperdiet gravida. Integer ullamcorper accumsan commodo. Phasellus sodales blandit diam, a sollicitudin enim fringilla vitae. Curabitur lectus elit, aliquet laoreet luctus quis, pretium ut sapien.
Suspendisse nec lorem id est convallis egestas nec eu arcu. Vivamus vitae orci leo, at consectetur leo. Duis hendrerit placerat mattis. Pellentesque gravida eleifend arcu, sit amet dapibus sapien gravida eget. Quisque consectetur, velit eu accumsan mollis, nibh tellus venenatis nisl, eu ullamcorper quam neque ac mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id sagittis quam. Etiam tincidunt tellus a nibh sollicitudin ut condimentum lectus semper. Praesent a eros augue. Vestibulum luctus, mauris sed sodales pulvinar, urna neque lacinia elit, et ultrices ante orci eget nisl. Mauris eu odio at tellus convallis imperdiet.
Pellentesque a ipsum tellus. Vivamus posuere ante vitae sapien sodales molestie. Vestibulum eget imperdiet ante. Maecenas eu mauris a justo rutrum porta. Fusce in metus diam. Nam molestie auctor dolor non accumsan. Phasellus condimentum eros quis nulla luctus sed laoreet nisl cursus. Nulla scelerisque elementum scelerisque. Ut sagittis nulla et tortor pulvinar aliquet. Donec leo leo, sagittis in feugiat eget, auctor sed tortor.
Etiam quis elit lacus. In id velit tortor, sit amet accumsan justo. Vestibulum eros augue, venenatis in porta eu, auctor vitae lectus. Vestibulum lacus lectus, ullamcorper in interdum eget, fermentum eget purus. Phasellus in tortor ut massa bibendum vestibulum nec ut massa. Donec elementum lacinia lorem, sed vulputate dolor faucibus id. Donec arcu tortor, dapibus in laoreet ut, dignissim tincidunt neque. Nunc consectetur lorem nec sem sodales cursus.
Suspendisse congue commodo velit, et volutpat urna molestie a. Nulla facilisi. Morbi vestibulum ante eget lectus posuere eu molestie lectus fringilla. Suspendisse vel odio sapien, non egestas dolor. Suspendisse leo risus, consequat quis ultrices vitae, posuere ut orci. Aliquam condimentum, elit vitae ornare bibendum, metus velit ornare ligula, nec porta tortor tortor eu sem. Sed tristique neque in felis gravida ultrices. Integer vitae neque leo, eget interdum orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus quis odio quis arcu adipiscing malesuada.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, felis quis gravida tempus, turpis sapien iaculis magna, eget blandit erat velit non mi. Nulla facilisi. Nunc sit amet metus sit amet nisl elementum ultrices. Aenean egestas sollicitudin porta. Vivamus neque eros, convallis sed ornare id, convallis nec lacus. Aenean mattis justo pretium risus rhoncus et malesuada elit dignissim. Vestibulum sed mauris dui. Vestibulum porta, turpis in sollicitudin faucibus, sem sem bibendum est, nec sollicitudin arcu urna eget tortor. Vestibulum quis ullamcorper dolor. Praesent vestibulum accumsan vulputate. Mauris pharetra imperdiet gravida. Integer ullamcorper accumsan commodo. Phasellus sodales blandit diam, a sollicitudin enim fringilla vitae. Curabitur lectus elit, aliquet laoreet luctus quis, pretium ut sapien.
Suspendisse nec lorem id est convallis egestas nec eu arcu. Vivamus vitae orci leo, at consectetur leo. Duis hendrerit placerat mattis. Pellentesque gravida eleifend arcu, sit amet dapibus sapien gravida eget. Quisque consectetur, velit eu accumsan mollis, nibh tellus venenatis nisl, eu ullamcorper quam neque ac mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id sagittis quam. Etiam tincidunt tellus a nibh sollicitudin ut condimentum lectus semper. Praesent a eros augue. Vestibulum luctus, mauris sed sodales pulvinar, urna neque lacinia elit, et ultrices ante orci eget nisl. Mauris eu odio at tellus convallis imperdiet.
Pellentesque a ipsum tellus. Vivamus posuere ante vitae sapien sodales molestie. Vestibulum eget imperdiet ante. Maecenas eu mauris a justo rutrum porta. Fusce in metus diam. Nam molestie auctor dolor non accumsan. Phasellus condimentum eros quis nulla luctus sed laoreet nisl cursus. Nulla scelerisque elementum scelerisque. Ut sagittis nulla et tortor pulvinar aliquet. Donec leo leo, sagittis in feugiat eget, auctor sed tortor.
Etiam quis elit lacus. In id velit tortor, sit amet accumsan justo. Vestibulum eros augue, venenatis in porta eu, auctor vitae lectus. Vestibulum lacus lectus, ullamcorper in interdum eget, fermentum eget purus. Phasellus in tortor ut massa bibendum vestibulum nec ut massa. Donec elementum lacinia lorem, sed vulputate dolor faucibus id. Donec arcu tortor, dapibus in laoreet ut, dignissim tincidunt neque. Nunc consectetur lorem nec sem sodales cursus.
Suspendisse congue commodo velit, et volutpat urna molestie a. Nulla facilisi. Morbi vestibulum ante eget lectus posuere eu molestie lectus fringilla. Suspendisse vel odio sapien, non egestas dolor. Suspendisse leo risus, consequat quis ultrices vitae, posuere ut orci. Aliquam condimentum, elit vitae ornare bibendum, metus velit ornare ligula, nec porta tortor tortor eu sem. Sed tristique neque in felis gravida ultrices. Integer vitae neque leo, eget interdum orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus quis odio quis arcu adipiscing malesuada.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, felis quis gravida tempus, turpis sapien iaculis magna, eget blandit erat velit non mi. Nulla facilisi. Nunc sit amet metus sit amet nisl elementum ultrices. Aenean egestas sollicitudin porta. Vivamus neque eros, convallis sed ornare id, convallis nec lacus. Aenean mattis justo pretium risus rhoncus et malesuada elit dignissim. Vestibulum sed mauris dui. Vestibulum porta, turpis in sollicitudin faucibus, sem sem bibendum est, nec sollicitudin arcu urna eget tortor. Vestibulum quis ullamcorper dolor. Praesent vestibulum accumsan vulputate. Mauris pharetra imperdiet gravida. Integer ullamcorper accumsan commodo. Phasellus sodales blandit diam, a sollicitudin enim fringilla vitae. Curabitur lectus elit, aliquet laoreet luctus quis, pretium ut sapien.
Suspendisse nec lorem id est convallis egestas nec eu arcu. Vivamus vitae orci leo, at consectetur leo. Duis hendrerit placerat mattis. Pellentesque gravida eleifend arcu, sit amet dapibus sapien gravida eget. Quisque consectetur, velit eu accumsan mollis, nibh tellus venenatis nisl, eu ullamcorper quam neque ac mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id sagittis quam. Etiam tincidunt tellus a nibh sollicitudin ut condimentum lectus semper. Praesent a eros augue. Vestibulum luctus, mauris sed sodales pulvinar, urna neque lacinia elit, et ultrices ante orci eget nisl. Mauris eu odio at tellus convallis imperdiet.
Pellentesque a ipsum tellus. Vivamus posuere ante vitae sapien sodales molestie. Vestibulum eget imperdiet ante. Maecenas eu mauris a justo rutrum porta. Fusce in metus diam. Nam molestie auctor dolor non accumsan. Phasellus condimentum eros quis nulla luctus sed laoreet nisl cursus. Nulla scelerisque elementum scelerisque. Ut sagittis nulla et tortor pulvinar aliquet. Donec leo leo, sagittis in feugiat eget, auctor sed tortor.
Etiam quis elit lacus. In id velit tortor, sit amet accumsan justo. Vestibulum eros augue, venenatis in porta eu, auctor vitae lectus. Vestibulum lacus lectus, ullamcorper in interdum eget, fermentum eget purus. Phasellus in tortor ut massa bibendum vestibulum nec ut massa. Donec elementum lacinia lorem, sed vulputate dolor faucibus id. Donec arcu tortor, dapibus in laoreet ut, dignissim tincidunt neque. Nunc consectetur lorem nec sem sodales cursus.
Suspendisse congue commodo velit, et volutpat urna molestie a. Nulla facilisi. Morbi vestibulum ante eget lectus posuere eu molestie lectus fringilla. Suspendisse vel odio sapien, non egestas dolor. Suspendisse leo risus, consequat quis ultrices vitae, posuere ut orci. Aliquam condimentum, elit vitae ornare bibendum, metus velit ornare ligula, nec porta tortor tortor eu sem. Sed tristique neque in felis gravida ultrices. Integer vitae neque leo, eget interdum orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus quis odio quis arcu adipiscing malesuada."

puts print_text_by_line(lorem_ipsum)