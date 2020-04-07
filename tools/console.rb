require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rudi = Customer.new("Rudi", "Mason")
gabs = Customer.new("Gaby", "Caroli")
sue = Customer.new("Susan", "Scars")
john = Customer.new("John", "Gough")

pizza = Restaurant.new("Pizza Napolitano")
sushi = Restaurant.new("Ki Sushi")
joy = Restaurant.new("Joy India")
numero = Restaurant.new("Pasta Numero")

rev1 = Review.new(rudi, sushi, 5)
rev2 = Review.new(rudi, pizza, 2)
rev3 = Review.new(sue, joy, 1)
rev4 = Review.new(gabs, numero, 5)
rev5 = Review.new(rudi, sushi, 5)
rev6 = Review.new(rudi, joy, 2)
rev7 = Review.new(gabs, joy, 1)
rev8 = Review.new(sue, numero, 5)
rev9 = Review.new(rudi, numero, 3)
rev10 = Review.new(rudi, pizza, 4)
rev11 = Review.new(sue, joy, 4)
rev12 = Review.new(gabs, sushi, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
