class Listing
   # has many trips
   # has many guests through trips

    attr_reader :city
 
    @@all = []

    def initialize(name,city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        Trip.all.select {|t| t.listing == self}
    end
   
    def trips
        self.guests.map {|t| t.trip}
    end

    


    
end