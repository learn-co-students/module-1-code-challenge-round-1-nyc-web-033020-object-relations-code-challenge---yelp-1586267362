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
    reviews.map { |review| review.customer }.uniq
  end

  def add_review(customer, rating)
    Review.new(customer, self, rating)
  end

  def self.average_start_rating
    sum = reviews.reduce(0)
    sum / reviews.length
  end


end
