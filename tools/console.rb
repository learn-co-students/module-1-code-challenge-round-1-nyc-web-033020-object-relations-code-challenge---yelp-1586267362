require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


brandon = Customer.new("Brandon", "Yoon")
stephanie = Customer.new("Stephanie", "Wong")
beaver = Customer.new("Josh", "Kim")

ihop = Restaurant.new("IHop")
qdoba = Restaurant.new("Qdoba")
chickenLovers = Restaurant.new("Chicken Lovers")

ihopReview = Review.new(brandon, ihop, 3)
qdobaReview = Review.new(stephanie, qdoba, 10)
chickenLovRev = Review.new(beaver, chickenLovers, 8)












binding.pry
0 #leave this here to ensure binding.pry isn't the last line