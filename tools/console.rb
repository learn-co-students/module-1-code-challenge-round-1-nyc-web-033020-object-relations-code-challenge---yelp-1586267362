require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customer.new(name, family_name)
#Restaurant.new(name)
#Review.new(customer, restaurant, rating)

#Customer instances
elias = Customer.new("Elias", "Taveras")
cristian = Customer.new("Cristian", "Taveras")
james = Customer.new("James", "Franco")
robert = Customer.new("Robert", "Downey")
kim = Customer.new("Kim", "K")
elias2 = Customer.new("Elias", "Bob")

#Restaurant instances
tao = Restaurant.new("Tao")
chantelle = Restaurant.new("Chantelle")
san_marzano = Restaurant.new("San Marzano")
ainsworth = Restaurant.new("Ainsworth")
joes_pizza = Restaurant.new("Joe's Pizza")

#Review Instances
tao_review = Review.new(elias, tao, 5)
chantelle_review = Review.new(elias, chantelle, 4)
san_marzano_review = Review.new(cristian, san_marzano, 5)
ainsworth_review = Review.new(james, ainsworth, 2)
joes_pizza_review = Review.new(robert, joes_pizza, 3)
tao_review = Review.new(cristian, tao, 2)
tao_review = Review.new(elias, tao, 3)

#Kim k doesnt have any review instances as a practice for empty list

#add a review to kim.
#kim.add_review(ainsworth, 3) 

binding.pry
0 #leave this here to ensure binding.pry isn't the last line