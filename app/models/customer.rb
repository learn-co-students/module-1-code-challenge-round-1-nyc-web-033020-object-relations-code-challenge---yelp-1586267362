class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  def reviews
    Review.all.select {|key| key.customer == self}
  end

  def restaurants
    self.reviews.map {|key| key.restaurant}
  end
  def add_review(restaurant, rating)
    Review.new(rating, self, restaurant)
  end
  def num_reviews
    self.reviews.count
  end
  def self.find_by_name(name)
    array = name.split
    answer = nil
    Customer.all.find do |key| 
      if key.given_name == array[0] && key.family_name == array[1]        
        answer = key
      end
    end
    answer
  end
  def self.find_all_by_given_name(name)
    Customer.all.select{|key| key.given_name == name}
  end

end
