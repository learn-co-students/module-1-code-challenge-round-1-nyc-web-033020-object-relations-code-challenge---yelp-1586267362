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
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total = 0
    num_of_reviews = 0

    arr_of_reviews = reviews.map do |review|
      review.rating
    end
    num_of_reviews = arr_of_reviews.length
    total = arr_of_reviews.reduce(0) {|sum, n| sum + n}
    total / num_of_reviews
  end

end
