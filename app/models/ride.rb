
class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end


    def self.all_distances
        self.all.collect do |ride|
            ride.distance
        end
    end
    
    def self.average_distance
        self.all_distances.sum / self.all_distances.size
        binding.pry
    end

end