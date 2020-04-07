class Restaurant

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Reviews.all.select do |review|
      review.Restaurant == self
  end

  def customers
    reviews.map {|review| review.customers}.uniq
  end

  def avg_star_rating
    self.all.reduce(0) {|sum, restaurant|sum + restaurant.rating} / Restaurant.rating.count
  end
end
