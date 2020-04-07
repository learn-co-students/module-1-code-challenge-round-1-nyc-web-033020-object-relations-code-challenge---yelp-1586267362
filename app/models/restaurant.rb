class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    #Almost tripped myself up by writing .uniq! here. I did not realize before that that will remove the unique items and return the remaining array.
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    # I wanted to use one line here, but I don't know how to crack open objects with inject properly.
    # rating_total = reviews.inject {|memo, (review, rating)| memo + review.rating}
    ratings = reviews.map {|review| review.rating}
    rating_total = ratings.inject {|memo, r| memo + r}
    rating_total / reviews.count
  end

end
