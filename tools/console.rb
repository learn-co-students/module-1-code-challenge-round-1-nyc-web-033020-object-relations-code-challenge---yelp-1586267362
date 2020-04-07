require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ramon = Customer.new("ramon", "leonidas")
freddy = Customer.new("freddy", "lopez")
jesus = Customer.new("jesus", "rivera")

luigis = Restaurant.new("luigis")
latia = Restaurant.new("latia")


r1 = Review.new("ramon", "luigis", 8)
r2 = Review.new("freddy", "luigis", 9)
r4 = Review.new("freddy", "luigis", 9)
r5 = Review.new("freddy", "latia", 9)
r3 = Review.new("jesus", "latia", 7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line