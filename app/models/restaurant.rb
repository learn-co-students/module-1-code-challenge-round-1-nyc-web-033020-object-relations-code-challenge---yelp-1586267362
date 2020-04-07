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
    Review.all.select { |review| review.restaurant == self }
  end
  
  #THIS IS MY INITIAL METHOD BUT IT RETURNS AN ARRAY FOR EACH CUSTOMER SO I FILTERED DOWN IN THE METHOD BELOW THIS ONE
  #FEEL FREE TO UNCOMMENT THIS METHOD AND COMMENT-OUT THE ONE BELOW IF THAT'S WHAT YOU'RE LOOKING FOR
  # def customers
  #   reviews.select.uniq { |review| review.customer }
  # end

  def customers
    array = reviews.select.uniq { |review| review.customer }
    array.map { |review| review.customer.full_name }
  end

  def ratings
    reviews.select { |review| review.rating.to_f }
  end

  def average_star_rating
    total = ratings.map.sum { |review| review.rating.to_f }
    total / reviews.count
  end

end
 