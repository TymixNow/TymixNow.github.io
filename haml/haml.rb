require 'haml'
filename = ARGV[0]
template = Haml::Template.new("haml/#{filename}.haml")
html = template.render
outfile = File.new("#{filename}.html", 'w')
    outfile.write(html)
outfile.close