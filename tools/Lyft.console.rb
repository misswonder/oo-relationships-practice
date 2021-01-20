require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

alex = Driver.new("Alex")
kevin = Driver.new("Kevin")

yvonne = Passenger.new("Yvonne")
ashley = Passenger.new("Ashley")

first_ride = Ride.new(yvonne, alex, 114)
second_ride = Ride.new(ashley, kevin, 105.3)



binding.pry