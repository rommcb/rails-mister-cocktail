# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Cocktail.destroy_all
Ingredient.destroy_all

puts "Creating cocktails..."
margarita = { name: "Margarita" }
mojito =  { name: "Mojito"}
cuba_libre =  { name: "Cuba Libre"}
spritz =  { name: "Spritz"}

[ margarita, mojito, cuba_libre, spritz ].each do |attributes|
  cocktail = Cocktail.create!(attributes)
  puts "Created #{cocktail.name}"
end
puts "Finished!"

puts "Creating ingredients..."
lemon = { name: "Lemon" }
ice =  { name: "Ice"}
mint_leaves =  { name: "Mint leaves"}
rum =  { name: "Rum"}

[ lemon, ice, mint_leaves, rum ].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end
puts "Finished!"