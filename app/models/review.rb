class Review
  @@all = []

  attr_reader :customer, :restaurant, :rating

  def initialize customer, restaurant, rating
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    Review.all << self
  end

  def self.all
    @@all
  end
end
