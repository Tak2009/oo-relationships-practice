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

b1 = Bakery.new("AAAA")
b2 = Bakery.new("BB")
b3 = Bakery.new("CCCCCCCC")
b4 = Bakery.new("DDD")

i1 = Ingredient.new("Sugar", 100, d1, b1)
i2 = Ingredient.new("Salt", 5, d1, b1)
i3 = Ingredient.new("flour", 50, d1, b1)
i4 = Ingredient.new("Honey", 100, d2, b2)
i5 = Ingredient.new("Chocolate", 5, d2, b2)
i6 = Ingredient.new("flour", 50, d2, b2)

p b1.desserts

binding.pry
"Start"