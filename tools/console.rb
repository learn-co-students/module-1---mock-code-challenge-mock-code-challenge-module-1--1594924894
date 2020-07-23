require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Tomas")
driver1 = Driver.new("Richard")
ride1 = Ride.new(driver1, passenger1, 4.5)

passenger2 = Passenger.new("Antonio")
driver2 = Driver.new("Mike")
ride2 = Ride.new(driver1, passenger2, 40)


ride3 = Ride.new(driver1, passenger2, 70)

passenger3 = Passenger.new("Micah")
driver3 = Driver.new("Cedric")
ride4 = Ride.new(driver3, passenger3, 105.5)


binding.pry
