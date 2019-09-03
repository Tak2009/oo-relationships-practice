class Listing
   # has many trips
   # has many guests through trips

    attr_reader :name, :city # we need to read those by .notsation later and hence this is required
 
    @@all = []

    def initialize(name,city)
        @name = name
        @city = city
        @@all << self #name and city go in @@all
    end

    def self.all
        @@all
    end

    def guests
        # mistake: Trip.all.select {|t| t.listing == self}
        self.trips.map {|t| t.guest} # #trips calls Trip.allxxx and hence .guest can be used within this instance method
    end
   
    def trips
        # mistake: self.guests.map {|t| t.trip}
        Trip.all.select {|t| t.listing == self} # #trips calls Trip.allxxx and hence .listing is used in here
    end

    def trip_count
        trips.length
    end
    
    def self.find_all_by_city(city)
        @@all.select {|l| l.city == city} # here, only methods available in this class can be used.
    end

    def self.most_popular  
           @@all.max_by {|l|l.trip_count}     # here, only methods available in this class can be used.
        
    end


    
end