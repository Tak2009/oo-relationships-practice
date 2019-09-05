class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
       Ingredient.all.select {|i| i.bakery == self}
    end

    def desserts
        ingredients.map {|i| i.dessert.name}.uniq
    end

    def average_calories
        a = ingredients.map {|i| i.calorie}
        a.sum {|s| c} / a.length
    end

    def shopping_list
        ingredients.map {|i| i.name}
    end
end