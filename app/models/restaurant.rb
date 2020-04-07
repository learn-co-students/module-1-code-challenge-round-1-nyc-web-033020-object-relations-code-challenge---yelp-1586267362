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
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def self.avg_star_rating
    Restaurant.all.map {|restaurant| restaurant.rating}.sum.to_f / Restaurant.all.count
  end
end
