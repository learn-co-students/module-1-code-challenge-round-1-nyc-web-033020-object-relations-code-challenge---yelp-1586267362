#require_relative '../config/environment.rb'
require 'pry'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

#def reload
#  load 'config/environment.rb'
#end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
jack = Customer.new("Jack", "Smith")
lisa = Customer.new("Lisa","Cole")
lily = Customer.new("Lily", "Chen")
mike = Customer.new("Mike", "Maw")

#restaurants
3star = Restaurant.new("Chomp")
4star = Restaurant.new("Yum")
5star = Restaurant.new("Slurp")
2star = Restaurant.new("Gulp")

#reviews
r1 = Review.new("Good food", jack, 4star, 4)
r2 = Review.new("Disgusting", lily, 2star, 2)
r3 = Review.new("So, so", mike, 3star, 3)
r4 = Review.new("It's so good", lisa, 5star, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

puts "yum yum"