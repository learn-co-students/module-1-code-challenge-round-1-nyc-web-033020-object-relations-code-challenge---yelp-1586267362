class Customer
  attr_accessor :given_name, :family_name
  @@all = [ ]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    Customer.all << self 
  end

  def self.all 
    @@all 
  end 

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants 
    Review.all.select do |review |
      review.customer == self 
    end.map{ |review| review.restaurant }.uniq
  end 


  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews 
    total = 0 
    Review.all.each do |review|
      if review.customer == self 
        total += 1 
      end 
    end 
    total 
  end 


  def self.find_by_name(name)
    Customer.all.find do |person|
      person.full_name == name 
    end 
  end 

  def self.find_by_name(name)
    Customer.all.select do |person|
      person.given_name == name 
    end 
  end 

end
