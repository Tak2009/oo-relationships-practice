require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# start here

l1 = Listing.new("Steve's place","TK")
l2 = Listing.new("Elisa's place","LN")
l3 = Listing.new("Sarah's place","NY")
l4 = Listing.new("Dave's place","NY")

g1 = Guest.new("Takeshi")
g2 = Guest.new("Sarah")
g3 = Guest.new("Sarah")
g4 = Guest.new("Tom")
g5 = Guest.new("Alex")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g2, l2)
t3 = Trip.new(g1, l3)
t4 = Trip.new(g2, l4)
t5 = Trip.new(g2, l4)



binding.pry
0