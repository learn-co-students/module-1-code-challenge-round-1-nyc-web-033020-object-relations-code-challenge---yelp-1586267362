class Customer
  
  attr_accessor :given_name, :family_name
  
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self
  end

#--------------

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end

  def restaurants
    reviews.map do |reviews|
      reviews.restaurant
    end.uniq
  end
  
  def num_reviews
    reviews.count
  end
  
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

#----------------

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |customer|
      customer.given_name == name
    end
  end

end
