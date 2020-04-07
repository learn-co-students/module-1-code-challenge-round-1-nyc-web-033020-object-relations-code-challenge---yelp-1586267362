class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    Review.all.select do |review|
      if reviews.restaurant == self
        review.customer.uniq
      end
    end
  end

  def average_star_rating
    # ratings_arr =
    reviews
    # ratings_arr
  end


end
