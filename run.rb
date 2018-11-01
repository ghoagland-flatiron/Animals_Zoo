require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Central Park", "NY")
zoo2 = Zoo.new("Bronx Zoo", "Bronx")
zoo3 = Zoo.new("International Zoo", "Atlantic")

lion1 = Animal.new("Lion", 1, zoo1)
dog1 = Animal.new("Dog", 4, zoo1)
lion3 = Animal.new("Lion", 3, zoo1)

lion2 = Animal.new("Lion", 2, zoo2)

cat1 = Animal.new("Cat", -5, zoo3)

binding.pry
puts "done"
