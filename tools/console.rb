require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# start here

l1 = Listing.new("Hotel1","NY")
l2 = Listing.new("Ryokan1","TK")
l3 = Listing.new("Hotel_Queen","LN")
l4 = Listing.new("ShitHotel","LN")
l5 = Listing.new("OKHotyel","LN")
l6 = Listing.new("fabCottage","ML")

g1 = Guest.new("Takeshi")
g2 = Guest.new("Dave")
g3 = Guest.new("Tom")
g4 = Guest.new("Tom")
g5 = Guest.new("Tom")
g6 = Guest.new("Sarah")

m1 = Trip.new(g1,l1)
m2 = Trip.new(g2,l2)
m3 = Trip.new(g3,l1)
m4 = Trip.new(g5,l1)
m5 = Trip.new(g5,l5)
m6 = Trip.new(g1,l6)
m7 = Trip.new(g1,l2)
m8 = Trip.new(g1,l3)






binding.pry
0