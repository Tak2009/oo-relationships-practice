class Ingredients

    attr_reader :name, :calorie, :dessert, :bakery 

    @@all = []

    def initialize(name, calorie, dessert, bakery)
        @name = name
        @calorie = calorie
        @dessert = dessert
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

end