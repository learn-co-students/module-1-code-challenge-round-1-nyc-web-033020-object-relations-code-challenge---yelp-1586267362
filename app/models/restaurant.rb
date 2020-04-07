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
    Reviews.all.select { |review| review.restaurant == self }
  end

  def customers
    Reviews.all.select do |review|
      if reviews.restaurant == self
        review.customer.uniq
      end
    end
  end


end
