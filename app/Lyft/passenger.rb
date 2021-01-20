class Passenger

    attr_accessor:name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 


    def rides
        Ride.all.select { |ride| ride.passenger == self }
    end


    def drivers
        rides.map { |ride| ride.driver }
    end


    def self.all
        @@all
    end 


    def total_distance
        distance = rides.map { |ride| ride.distance }
        total_distance = distance.reduce(:+)
        # self.rides.sum {|ride| ride.distance}
    end 

    def self.premium_members
        self.all.select { |passenger| passenger.total_distance > 100 }
    end 

end
