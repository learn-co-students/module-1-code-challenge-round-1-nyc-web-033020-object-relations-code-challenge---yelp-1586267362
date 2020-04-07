class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Customer.all.map do |customer| 
      if customer.full_name == name
        return customer
      end
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select {|customer| customer.given_name == name}
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    restaurants = reviews.map {|review| review.restaurant}.uniq!
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.count
  end

end
