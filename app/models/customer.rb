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

  def self.find_by_name
  end
  
  #helper method to get all reviews written
  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    unique_list = []
    reviews.each do |review| 
      if !unique_list.include?(review.restaurant) 
        unique_list << review.restaurant
      end
    end
    unique_list
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.count
  end

end
