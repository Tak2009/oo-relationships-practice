class Listing
  # has many 
   # has many to a trip

    attr_reader :city
 
    @@all = []

    def initialize(city)
        @city = city
        self.class.all << self
    end

    def self.all
        @@all
    end

    def guests
        Trip.all.select {|t| t.city == self}
        
    end

    def trips
        self.guests.map {|t| t.trip}
    end

    def trip_count
        trips.length
    end

    def self.find_all_by_city(city)
    self.all.select {|l| l.city == city}
    end

    def self.most_popular
        self.all.max_by {|listings| listings.trip_count}
    end
end