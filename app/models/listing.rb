class Listing

    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
        
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|t| t.listing == self}
    end

    def trip_count
        trips.length
    end

    def guests
        trips.map {|t| t.guest}
    end

    def self.find_all_by_city(city)
        @all.select {|l| l.city == city}
    end

    def self.most_popular
        @@all.max_by {|l| l.trip_count}
    end

end