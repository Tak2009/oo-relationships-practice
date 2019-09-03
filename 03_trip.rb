class Trip
    # belongs to a guest
    # belongs to a listing
 
    attr_reader :guest, :listing # we need to read those by .notsation later
 
    @@all = []

    def initialize(guest, listing)  #city argument=attribute is available in Listing so no need to add city as an argument in Trip
        @guest = guest
        @listing = listing
        @@all << self # guest and listing go in @@all
    end

    def self.all
        @@all
    end

end