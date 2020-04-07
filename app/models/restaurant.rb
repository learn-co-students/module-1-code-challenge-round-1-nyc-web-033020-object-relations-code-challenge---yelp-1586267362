class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
  end
end

def customers
    Customer.all.select do |customer1|
      customer1.restaurant == self
  end
 end

end
