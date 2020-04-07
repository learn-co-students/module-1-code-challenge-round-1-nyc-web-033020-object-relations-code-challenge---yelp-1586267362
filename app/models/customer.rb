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
    # Helper method for later aggregate methods
    Review.all.select{ |review| review.customer == self }
  end

  def restaurants
    # Unique array of restaurants this customer has reviewed
    self.reviews.map{ |review| review.restaurant }.uniq
  end

  def add_review restaurant, rating
    # Rating should be a float or int between 0-5
    if (rating.class == Float || rating.class == Integer) && (rating >= 0 && rating <= 5) 
      Review.new(self,restaurant,rating)
    else
      puts 'Please enter a whole number or decimal between 0 and 5'
    end
  end

  def num_reviews
    # How many reviews customer has, per #reviews method
    self.reviews.length
  end

  def self.find_by_name fullname
    # Find the first customer matching this name string (Sorry 'Bob Smith's)
    Customer.all.find{ |customer| customer.full_name == fullname }
  end

  def self.find_by_given_name name
    # Array of all customers matching firstname
    Customer.all.select{ |customer| customer.given_name == name }
  end

  def self.all 
    @@all
  end

end
