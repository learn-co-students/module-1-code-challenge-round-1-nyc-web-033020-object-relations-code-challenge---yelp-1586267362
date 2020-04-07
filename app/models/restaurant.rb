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
    # arr_of_ratings = reviews.map do |review|
    #   review.rating
    # end
    # average = 0
    # total = arr_of_ratings.reduce(0) {|sum, n| sum + n}
    # average = (total / arr_of_ratings.length)
    # puts total
    # puts average

    review_arr = reviews.map do |review|
      review.rating
    end
    (review_arr.reduce(0) {|sum, n| sum + n}) / (review_arr.length).to_f
  end

end
