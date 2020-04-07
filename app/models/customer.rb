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

  # unique list of restaurants vistied
  def restaurants
    restaurants_visits.map {|ele| ele.restaurant}.uniq
  end

  # A customer instance creating a review using self
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  # Using the helper method of restaurants_visits to determine the num of reviews made by this instance
  def num_reviews
    restaurants_visits.count
  end

  
  def self.find_by_name(full_name)
    Customer.all.find do |customers|
      customers.full_name == full_name
    end
  end

  def self.find_all_by_given_name(given_name)
    Customer.all.select {|customers| customers.given_name == given_name}
  end
end
