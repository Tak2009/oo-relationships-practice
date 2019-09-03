class Trip
    # belongs to a guest
    # belongs to a listing
 
    attr_reader :city, :guest, :listing
 
    @@all = []

    def initialize(guest, listing)  #city argument=attribute is available in Listing so no need to add city as an argument in Trip
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all
        @@all
    end

    

end