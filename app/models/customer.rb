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

  def restaurants(customer)
    Review.all.select { |review| review.customer == self }.uniq #undefined method
  end

  def add_review(restaurant, rating)
    Review.new #return value, syntax? should add new Review inst
  end






end
