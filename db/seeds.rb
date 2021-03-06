# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts 'cleaning database'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
puts 'cleaning ok'

puts 'Lets add some ingredient'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
list_ingredient = JSON.parse(user_serialized)

list_ingredient['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
puts 'ingredients added'
