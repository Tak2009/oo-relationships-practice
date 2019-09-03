require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# start here

l1 = Listing.new("TK")
l2 = Listing.new("NY")
l3 = Listing.new("LN")
l4 = Listing.new("LN")
l5 = Listing.new("NY")

g1 = Guest.new("Takeshi")
g2 = Guest.new("Sarah")
g3 = Guest.new("Sarah")
g4 = Guest.new("Sarah")
g5 = Guest.new("Alex")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g2, l2)
t3 = Trip.new(g1, l3)
t4 = Trip.new(g2, l4)
t5 = Trip.new(g2, l4)



binding.pry
0