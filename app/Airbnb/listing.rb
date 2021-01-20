require 'pry'

class Listing

    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city 
        @@all << self
    end

    def guests
        result = []
        Trip.all.map do |trip| 
            if trip.listing == self
                result<< trip. guest 
            end 
        end 
        result
    end

    #self.trips.map { |trip| trip.guest }

    def trips 
        Trip.all.select { |trip| trip.listing == self }
    end 

    def trip_count
        self.trips.count
    end 

    def self.all
        @@all
    end 

    def self.find_all_by_city(city)
        Listing.all.select { |listing| listing.city == city }
    end 

    def self.most_popular
        Listing.all.max_by { |listing| listing.trip_count }
    end

end 

# class Listing 

#     attr_reader :city 
#     @@all = []
#   def initialize(name, city)
#       @name = name 
#       @city = city 
#       @@all << self 
#   end 

#   def guests 
#   #     results = []
#   #    Trip.all.map do |trip| 
#   #     if trip.listing == self 
#   #         results << trip.guest
#   #     end 
#   #    end 

#   #     results 
#    self.trips.map { |trip| trip.guest}

#   end 



#   def trips 
#  Trip.all.select {|trip| trip.listing == self }
#   end 


#   def trip_count 
#       self.trips.count
#   end 



#   def self.all 
#       @@all 
#   end 

#   def self.find_all_by_city(city)
#       #Take in an arguement ex: Pass in "Seattle" get back all listings that have Seattle" 
#       Listing.all.select {|listing| listing.city == city}
#   end 


#   def self.most_popular
#       Listing.all.max_by {|listing| listing.trip_count}  
#   end 
