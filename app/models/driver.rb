
class Driver

    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |rides|
        rides.driver == self
        end
    end

    def passenger_names
        self.rides.map do |rides|
            rides.passenger
        end.uniq
    end

    def self.all
        @@all
    end

    def total_distance
        self.rides.sum do |rides|
            rides.distance
        end
    end
    
    def self.mileage_cap(distance)
        self.all.select do |driver|
            driver.total_distance > distance
        end
    end

end
