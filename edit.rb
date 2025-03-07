while true
  print "[website editor]> "
  com = gets
  c = com.split("")[0]
  case c
  when "c"
    system("bash", "compile.sh")
  when "n"
    system("bash", "compile.sh")
    system("bash", "editor/daily.sh")
  when "x"
    break
  end
end