require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Shawn", "Spencer")
customer2 = Customer.new("Burton", "Guster")
customer3 = Customer.new("Juliet", "O'Hara")
customer4 = Customer.new("Carton", "Lassiter")
customer5 = Customer.new("Henry", "Spencer")
customer6 = Customer.new("Shawn", "White")

restaurant1 = Restaurant.new("Del Taco")
restaurant2 = Restaurant.new("Japadogs")
restaurant3 = Restaurant.new("Wendy's")
restaurant4 = Restaurant.new("McDonald's")
restaurant5 = Restaurant.new("Burger King")

review1 = Review.new(customer1, restaurant2, 5)
review2 = Review.new(customer2, restaurant2, 1)
review3 = Review.new(customer2, restaurant1, 3)
review4 = Review.new(customer4, restaurant4, 5)
review5 = Review.new(customer5, restaurant2, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line