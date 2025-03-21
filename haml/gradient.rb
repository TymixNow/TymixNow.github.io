srand 1
def randclr
  return "#"+((rand(255).to_s(16).rjust(2, "0"))*3)
end

def randstops(number,t = 1)
  out = []
  (1..number).to_a.each do |i|
    clist = []
    (1..number).to_a.each do |j|
      clist << randclr
    end
    offset = ((i.to_f)/number).to_s
    dur = (i+number).to_s + "s"
    out << {colours: clist, dur: dur, offset: offset, stopac: t.to_s}
  end
  return out
end

vert = 
  {
    id: "v",
    stops: randstops(100),
    x: "1",
    y: "0",
  }
hor = 
  {
    id: "h",
    stops: randstops(100, 0.5),
    y: "1",
    x: "0",
  }
$gradients = [vert, hor]
