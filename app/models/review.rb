class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(name, customer, restaurant, rating)
        @name = name
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
    end

    def restaurant
    end
end