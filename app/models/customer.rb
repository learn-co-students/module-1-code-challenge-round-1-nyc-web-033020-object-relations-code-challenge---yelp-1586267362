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

  def reviews
    Review.all.select {|review| review.customer == self.given_name}
  end

  def restaurants
    reviews.map {|review|review.restaurant}.uniq
  end
end
