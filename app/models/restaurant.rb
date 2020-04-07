class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end
  
  def customers
    reviews.select.uniq { |review| review.customer }
  end

  def ratings
    reviews.select { |review| review.rating.to_f }
  end

  def average_star_rating
    total = ratings.map.sum { |review| review.rating.to_f }
    total / reviews.count
  end

end
 