class Listing
  # has many 
   # has many to a trip

    attr_reader :city
 
    @@all = []

    def initialize(city)
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