class Review

    attr_reader :rating, :customer, :restaurant

    @@all = []

    def initialize(rating, customer, restaurant)
        @rating = rating
        @customer = customer
        @restaurant = restaurant
        Review.all << self
    end

    def self.all
        @@all
    end
  
end 