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

  def self.count
    @@all.length
  end

  def customer
    Review.all.find { |review| review.customer == customer }
    #needs review stack level error
  end

  def restaurant
    Review.all.select { |review| review.restaurant == restaurant}
    #needs review stack level error
  end

end
