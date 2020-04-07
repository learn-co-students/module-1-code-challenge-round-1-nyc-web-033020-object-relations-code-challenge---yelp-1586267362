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
  end

  def add_review(self, restaurant, rating)
    Review.new(name, self, restaurant, rating)
  end

  def num_review
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    self.all.select do |customer|
      customer.given_name == name
    end
  end
end
