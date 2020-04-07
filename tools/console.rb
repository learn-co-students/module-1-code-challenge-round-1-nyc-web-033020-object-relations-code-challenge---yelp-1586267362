require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

coral = Customer.new("Coral", "Fussman")
emily = Customer.new("Emily", "Fussman")
yaffa = Customer.new("Yaffa", "Fussman")


thai = Restaurant.new("Spice")
israeli = Restaurant.new("12 Chairs")
mexican = Restaurant.new("Tacombi")



r1 = Review.new(coral, thai, 4)
r2 = Review.new(coral, israeli, 5)
r3 = Review.new(yaffa, mexican, 2)
r4 = Review.new(emily, israeli, 4)
r5 = Review.new(emily, mexican, 5)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line