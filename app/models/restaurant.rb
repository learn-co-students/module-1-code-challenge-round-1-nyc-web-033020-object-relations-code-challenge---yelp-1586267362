class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def reviews
    # Array of all reviews this restaurant has recieved
    Review.all.select{ |review| review.restaurant == self }
  end

  def customers
    # Unique array of customers who have reviewed this restaurant
    self.reviews.map{ |review| review.customer }.uniq
  end

  def average_star_rating
    # Floating-point average of all this restaurant's reviews
    self.reviews.map{ |review| review.rating }.sum.to_f / self.reviews.length    
  end

  def self.all
    @@all
  end
end
