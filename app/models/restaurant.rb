class Restaurant
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews 
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def rest_reviews
    reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
    cumulative_ratings = rest_reviews.reduce(0) do |accumulator, reviews|
      (accumulator += reviews).to_f
    end
    (cumulative_ratings / rest_reviews.count).to_f
  end
end
