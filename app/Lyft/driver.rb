class Driver

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end


    def rides
        Ride.all.select { |ride| ride.driver == self }
    end


    def passengers
        rides.map { |ride| ride.passenger }
    end
 

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        self.all.select { |driver| driver.mileage > distance }
    end 

    def mileage
        self.rides.sum {|ride| ride.distance}
    end

end
