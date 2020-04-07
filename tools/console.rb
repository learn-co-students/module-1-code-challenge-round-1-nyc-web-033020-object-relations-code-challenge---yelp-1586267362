require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Edgar", "Rivera")
c2 = Customer.new("Edgar", "Smith")
c3 = Customer.new("Lei", "Brutus")

rest1 = Restaurant.new("Pizza Joint")
rest2 = Restaurant.new("Chipotle")
rest3 = Restaurant.new("Burger Joint")

rev1 = Review.new(c3, rest1, 5)
rev2 = Review.new(c2, rest2, 4)
rev3 = Review.new(c2, rest2, 5)
rev4 = Review.new(c1, rest2, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line