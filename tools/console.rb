require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

carl = Customer.new("Carl", "Weathers")
kip = Customer.new("Kip", "Kensington")
sandy = Customer.new("Sandy", "Sanders")

burgerking = Restaurant.new("Burger King")
mcdonalds = Restaurant.new("McDonalds")
ramenshop = Restaurant.new("Ramen Shop")

r1 = Review.new(sandy, burgerking, 3)
r2 = Review.new(sandy, mcdonalds, 9)
r3 = Review.new(sandy, ramenshop, 8)
r4 = Review.new(kip, ramenshop, 10)
r5 = Review.new(kip, burgerking, 5)
r6 = Review.new(carl, ramenshop, 7)
r7 = Review.new(carl, ramenshop, 10)

r8 = sandy.add_review(burgerking, 6)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line