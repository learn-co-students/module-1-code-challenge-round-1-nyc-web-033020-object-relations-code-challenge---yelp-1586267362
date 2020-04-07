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

    def customers
        Customer.all.map do |customer|
            customer.reviews
        end
    end

    def restaurants
        Restaurant.all.map do |restaurant|
            restaurant.reviews == self
        end
    end
end