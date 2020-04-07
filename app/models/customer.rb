class Customer
  @@all = []
  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select{ |review| review.customer == self }
  end

  def restaurants
    self.reviews.map{ |review| review.restaurant }.uniq
  end

  def add_review restaurant, rating
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    self.reviews.length
  end

  def self.find_by_name fullname
    Customer.all.find{ |customer| customer.full_name == fullname }
  end

  def self.find_by_given_name name
    Customer.all.select{ |customer| customer.given_name == name }
  end

  def self.all 
    @@all
  end

end
