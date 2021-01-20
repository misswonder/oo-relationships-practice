require 'pry'

class Guest 

attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
        #self.save 
    end 

    def listings 
    self.trips.map {|trip| trip.listing}
    # Listing.all.select{|listing| listing.guests.include?(self)}
    end

    def trips 
        Trip.all.select { |trip| trip.guest == self} 
    end 

    def trip_count
        self.trips.count
    end 

    # def save
    #     Guest.all << self 
    # end 

    def self.all 
        @@all 
    end 


    def self.pro_traveller
         Guest.all.select {|guest| guest.trip_count > 1}
         #self.all.select {|guest| guest.trip_count > 1}
         #@@all.select {|guest| guest.trip_count > 1}
    end 

     
    def self.find_all_by_name(input)
        Guest.all.select {|guest| guest.name == input}
    end 

end 

    #  class Guest 
    #     attr_reader :name 
        
    #     @@all = []
    #         def initialize(name)
    #             @name = name 
    #            self.save 
    #         end 
        
    #         def listings 
    #         self.trips.map {|trip| trip.listing}
    #         # Listing.all.select{|listing| listing.guests.include?(self)}
    #         end
        
    #         def trips 
    #             Trip.all.select { |trip| trip.guest == self} 
    #         end 
        
    #         def trip_count
    #             self.trips.count
    #         end 
    #        def save
    #         Guest.all << self 
        
    #        end 
    #          def self.all 
    #             @@all 
    #          end 
        
    #          def self.pro_traveller
    #              Guest.all.select {|guest| guest.trip_count > 1}
    #          end 
        
    #          def self.find_all_by_name(input)
    #             Guest.all.select {|guest| guest.name == input}
    #          end 
    # end 