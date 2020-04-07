require 'pry'
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
    reviews.map do |reviews|
      reviews.customer 
    end 
  end 

  def how_many_customers 
    Review.all.select do |review| 
      review.restaurant == self 
    end.count
  end 

  def average_star_rating 
    #binding.pry 
    how_many_customers / reviews.count 
  end 

end
