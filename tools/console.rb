require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Customer.new("John", "Smith")
melissa = Customer.new("Melissa", "Rodriguez")
garabed = Customer.new("Garabed", "Sahakian")
ilya = Customer.new("Ilya", "Repin")

olives = Restaurant.new("Olives For Days")
spicy = Restaurant.new("The Spicy Watermelon")
bread = Restaurant.new("All We Serve is Bread")

olives_r1 = Review.new(melissa, olives, 5)
olives_r1 = Review.new(melissa, olives, 5)
olives_r1 = Review.new(melissa, olives, 5)
olives_r2 = Review.new(garabed, olives, 3)
olives_r2 = Review.new(garabed, olives, 2)
spicy_r1 = Review.new(ilya, spicy, 3)
spicy_r2 = Review.new(john, spicy, 1)
bread_r1 = Review.new(melissa, bread, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line