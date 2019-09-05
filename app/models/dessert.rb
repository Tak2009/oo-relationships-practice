class Dessert

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
        Ingredient.all.select {|i| i.dessert == self }
    end

end