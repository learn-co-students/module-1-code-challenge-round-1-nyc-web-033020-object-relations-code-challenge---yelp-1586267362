class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    customers = reviews.map {|review| review.customer}.uniq!
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating}
    reviews.inject {|memo, r| memo += r.rating} / reviews.count
  end

end
