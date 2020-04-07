class Customer
  @@all = []
  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    
  end

  def add_review restaurant rating

  end

  def num_reviews

  end

  def self.find_by_name fullname

  end

  def self.find_by_given_name

  end

  def self.all 
    @@all
  end

end
