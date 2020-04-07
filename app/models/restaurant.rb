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
    Review.all.select do |reviews|
      reviews.restaurant == self  
    end.map { |review| review.customer }.uniq
  end 

  def ratings_by_restuart 
    Review.all.select do |review|
      review.restaurant == self 
    end.map{ |review| review.rating }
  end 

  def how_many_customers 
    Review.all.select do |review| 
      review.restaurant == self 
    end.count
  end 

  def average_star_rating 
    #binding.pry 
    ratings_by_restuart.sum / how_many_customers
  end 

end
