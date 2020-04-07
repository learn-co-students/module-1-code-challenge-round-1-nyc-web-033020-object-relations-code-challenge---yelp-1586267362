class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def reviews
    Review.all.select{ |review| review.restaurant == self }
  end

  def customers
    self.reviews.map{ |review| review.customer }.uniq
  end

  def average_star_rating
    self.reviews.map{ |review| review.rating }.sum.to_f / self.reviews.length    
  end

  def self.all
    @@all
  end
end
