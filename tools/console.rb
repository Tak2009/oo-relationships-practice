require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# start here

d1 = Dessert.new("Cake")
d2 = Dessert.new("Cake2")
d3 = Dessert.new("Cake3")
d4 = Dessert.new("Cake4")
d5 = Dessert.new("Cake5")

b1 = Bakerhy.new("AAAA")
b2 = Bakerhy.new("BB")
b3 = Bakerhy.new("CCCCCCCC")
b4 = Bakerhy.new("DDD")

binding.pry
"Start"