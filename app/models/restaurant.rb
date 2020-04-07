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
    Review.all.select {|reviews| reviews.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

end
