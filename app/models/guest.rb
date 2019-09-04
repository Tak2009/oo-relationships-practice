class Guest
    # has many trips
    # has many listings through trips

    attr_reader :name # we need to read those by .notsation later
 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self # name goes in @@all
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|t| t.guest == self}
    end

    def listings
        self.trips.map {|t| t.listing}
    end

    def trip_count
        trips.length
    end

    def self.pro_traveller
        @@all.select.{|g| g.trip_count > 1}
    end

    def self.find_all_by_city(name)
        @@all.select {|g| g.name == name} # here, only methods available in this class can be used.
    end

end



