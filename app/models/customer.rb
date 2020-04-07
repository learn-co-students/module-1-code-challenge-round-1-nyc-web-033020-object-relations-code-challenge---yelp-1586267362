class Customer
  attr_accessor :given_name, :family_name
  @@all =[]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all 
    @@all
  end

  # Created a helper method to select all the reviews that a given customer has vistied
  # (includes dupes)
  def restaurants_visits
    Review.all.select {|reviews| reviews.customer == self}
  end

  #unique list restaurants
  def restaurants
    restaurants_visits.map {|ele| ele.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    restaurants_visits.count
  end

end
