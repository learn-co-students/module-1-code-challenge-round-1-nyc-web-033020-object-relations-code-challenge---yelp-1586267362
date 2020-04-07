require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

liz = Customer.new("Liz", "Karen")
kenji = Customer.new("Kenji","Mason")

pizza = Restaurant.new("PizzaPlace")
pasta = Restaurant.new("Spagetti Girl")

review1 = Review.new(liz, pizza, 5)
review2 = Review.new(kenji, pasta, 1)
review3 = Review.new(liz, pasta, 10)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line