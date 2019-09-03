class Guest
    # has many trips
    # has many listings through trips

    attr_reader :name
 
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def listings
        Trip.all.select {|t| t.guest == self}
    end

    def trips
        self.listings.map {|t| t.trip}
    end

    def trip_count
        trips.count
    end

    def self.pro_taveller
        self.all
    end

    def self.find_all_by_name(name)
        self.all.select {|g| g.name == name}
    end

end



