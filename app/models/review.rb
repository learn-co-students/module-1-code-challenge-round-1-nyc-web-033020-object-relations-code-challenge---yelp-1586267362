class Review

  attr_reader :customer, :restaurant, :rating
  @@all =[]

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def customer(customer)
    Review.all.find { |review| review.customer == customer }
    #test return on both
  end

  def restaurant(restaurant)
    Review.all.select { |review| review.restaurant == restaurant}
  end

end
