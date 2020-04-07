class Review
  @@all = []

  attr_reader :customer, :restaurant, :rating

  def initialize customer, restaurant, rating
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    Review.all << self
  end

  def self.highly_rated min_rating=4
    # Get an array of restaurant names with their average rating rating concentated into strings
    # Default value for minimum is 4, user specify optional
    Review.all.select do |review| 
      review.restaurant.average_star_rating >= min_rating
    end.map do |review| 
      review.restaurant.name + ': ' + review.restaurant.average_star_rating.to_s
    end.uniq
  end

  def self.not_recommended below=3
    Review.all.select do |review| 
      review.restaurant.average_star_rating < below
    end.map do |review| 
      review.restaurant.name + ': ' + review.restaurant.average_star_rating.to_s
    end.uniq
  end

  def self.all
    @@all
  end
end
