class Review
    attr_reader :name, :restaurant, :rating, :customer
    
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        Review.all << self
    end

    def rating
        @rating
    end

    def customer
        @customer
    end

    def self.all
        @@all
    end

    def restaurant
        @restaurant
    end
    

  
end