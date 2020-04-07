class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.full_name
    @full_name = "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select { |review| review.customer == self }.uniq
    #stack level too deep?
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def reviews
   Review.all.select { |review| review.customer == self}
  end

  def num_reviews
    reviews.length
  end

  def self.find_by_name(fullname)
    Customer.all.find { |cust| cust.full_name == fullname }
  end

  def self.find_all_by_given_name(givenname)
    Customer.all.select { |cust| cust.given_name == givenname }
  end


end
