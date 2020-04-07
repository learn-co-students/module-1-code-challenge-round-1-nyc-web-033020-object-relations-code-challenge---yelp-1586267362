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
chompy= Restaurant.new("Chomp")
yum = Restaurant.new("Yum")
slurp = Restaurant.new("Slurp")
gulp = Restaurant.new("Gulp")

#reviews
r1 = Review.new("Good food", jack, slurp, 4)
r2 = Review.new("Disgusting", lily, chompy, 2)
r3 = Review.new("So, so", mike, chompy, 3)
r4 = Review.new("It's so good", lisa, gulp, 5)
r5 = Review.new("Quite alright", lisa, chompy, 3)
r6 = Review.new("Could be better", lily, yum, 3)
r7 = Review.new("Taste pretty good", jack, yum, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

puts "yum yum"