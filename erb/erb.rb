require 'haml'
template = Haml::Template.new("index.haml")
html = template.render
File.open("../index.html", 'w'){ |file| file.write(html)}