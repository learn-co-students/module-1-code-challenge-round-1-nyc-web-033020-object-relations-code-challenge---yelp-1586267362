require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cust1 = Customer.new('Michael', 'Jiang')
cust2 = Customer.new('Jim', 'Halpert')
cust3 = Customer.new('Pam', 'Beasley')
cust4 = Customer.new('Michael', 'Scott')

rest1 = Restaurant.new('Krusty Krab')
rest2 = Restaurant.new('Akino')
rest3 = Restaurant.new('Pelicana')

rev1 = Review.new(cust1, rest1, 10)
rev2 = Review.new(cust1, rest2, 8)
rev3 = Review.new(cust2, rest3, 10)
rev4 = Review.new(cust3, rest3, 9)
rev5 = Review.new(cust1, rest1, 9)
rev6 = Review.new(cust2, rest2, 5)
rev7 = Review.new(cust2, rest3, 9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line