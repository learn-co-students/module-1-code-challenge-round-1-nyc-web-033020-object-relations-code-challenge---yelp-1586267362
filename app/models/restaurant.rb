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

  # Selecting the reviews that usings this instance of Restaurant
  def reviews
    Review.all.select {|reviews| reviews.restaurant == self}
  end
  
  # An array of customers that have left a review, no dupes
  def customers
    reviews.map {|review| review.customer}.uniq
  end
  
  #helper method to create an array with all the ratings for a given restaurant
  def ratings
    reviews.map {|review| review.rating}
  end

  # Using the helper method of ratings to determine both the sum and total reviews
  def average_star_rating
    ratings.sum / ratings.count.to_f
  end

end
