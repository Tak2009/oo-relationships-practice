class Guest
# has many trips
# has many guests thorugh trips

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|t| t.guest == self}
    end

    def guests
        self.trips.map {|t| t.listing}
    end

    def trip_count
        trips.length
    end

    def self.pro_traveller
        @@all.select {|g| g.trip_count > 1}
        
    end

    def self.find_all_by_name(name)
        @@all.select {|g| g.name == name}
    end

end