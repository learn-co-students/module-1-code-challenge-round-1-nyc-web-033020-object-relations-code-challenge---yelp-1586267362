class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select do |restaurant|
      restaurant.customer == self
    end
  end

  def customers
    self.review.map do |review|
      review.customer.uniq
    end
  end

def add_review(restaurant,rating)
  Review.new(restaurant, self, rating)
end

def num_reviews
  Reviews.all.count
end

def find_by_name(name)
  @given_name + @family_name.first
end

def find_all_by_given_name(name)
  @given_name.map

end

def average_star_rating
  Reviews.sum.to_f / Review.size
end
end


end
