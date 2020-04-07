class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end

  end
  binding.pry


end
