class Restaurant
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def reviews
    Review.all.select {|key| key.restaurant == self}
  end
  def customers
    self.reviews.map {|key| key.customer}
  end
  def nb_of_reviews
    self.reviews.count
  end
  def average_star_rating
    rating_sum = 0
    self.reviews.select {|key| rating_sum += key.rating}
    rating_sum / self.nb_of_reviews * 1.0
  end

end
