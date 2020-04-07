class Review
  
    attr_accessor :customer, :resturant, :rating
    @@all = []

    def initialize(customer, resturant, rating)
        @customer = customer
        @resturant = resturant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        Customer.all.filter do |customer|
            customer.self
        end
    end

    def restaurant
        Restaurant.all.filter do |restaurant|
            restaurant.self
        end
    end

end