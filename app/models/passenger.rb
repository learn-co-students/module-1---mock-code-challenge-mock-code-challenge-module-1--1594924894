
class Passenger

    attr_accessor :driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |rides|
        rides.passenger == self
        end
    end

    def drivers
        self.rides.map do |rides|
            rides.driver
        end
    end

    def total_distance
        self.rides.sum do |rides|
            rides.distance
        end
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select do |passengers|
            passengers.total_distance > 100
        end
    end

end
