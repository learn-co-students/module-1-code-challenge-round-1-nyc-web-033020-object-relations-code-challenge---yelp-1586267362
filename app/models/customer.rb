class Customer
  attr_accessor :given_name, :family_name

  @@all = []

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

  def add_review(restaurant, rating)
    Review.new(rating, self, restaurant)
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    customer_reviews.map.uniq { |review| review.restaurant == self }
  end

  def num_reviews
    reviews.count
  end

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_given_name(name)
    self.all.select { |customer| customer.given_name == name }
  end

end
 