year = Time.now.year
mon = Time.now.mon
day = Time.now.mday

year = "%04d" % [year]
mon = "%02d" % [mon]
day = "%02d" % [day]

placement = year+"/"+mon+"/"
file = day+".html"

system("mkdir", "-p", placement)

require 'haml'
filename = "daily"
template = Haml::Template.new("editor/#{filename}.haml")
html = template.render
outfile = File.new("#{placement+file}", 'w')
    outfile.write(html)
outfile.close