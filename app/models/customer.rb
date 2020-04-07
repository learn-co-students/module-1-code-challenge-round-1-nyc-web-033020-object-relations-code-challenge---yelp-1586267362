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

  def Customer.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end.uniq
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, rating)
    #Review.new(customer, restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.length
  end
  
  def Customer.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end


  def Customer.find_all_by_given_name(name)
    Customer.all.select do |customer|
      customer.given_name == name
    end
  end















  # Customer.all.find do |customer|
  #   if customer.family_name && customer.given_name == self.family_name && self.given_name
  #     return customer
  #   end
  # end
end
