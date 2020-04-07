class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
    
  end
  def customers
    self.review.map do |review|
      review.customer.uniq
    end
  end



end
