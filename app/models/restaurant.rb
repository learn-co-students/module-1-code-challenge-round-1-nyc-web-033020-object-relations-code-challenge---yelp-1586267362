class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def Restaurant.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def rating_total
    reviews.reduce(0) do |sum, review|
      sum + review.rating
    end
  end

  def average_star_rating
    rating_total / reviews.length
  end

end
