require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

luis = Customer.new("luis", "pestana")
maria = Customer.new("maria", "pestana")

sams = Restaurant.new("sam's pizza")
and_pizza = Restaurant.new("& pizza")

review_1 = Review.new(luis, sams, 5)
review_2 = Review.new(luis, and_pizza, 4)
review_3 = Review.new(maria, sams, 3)
review_4 = Review.new(maria, and_pizza, 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
