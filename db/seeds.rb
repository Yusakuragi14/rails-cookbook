# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning up database..."
Recipe.destroy_all
Category.destroy_all
Bookmark.destroy_all
puts "Database cleaned"

puts "creating recipes..."
receipes = [
  { name: "Spaghetti Bolognese", description: "A classic Italian pasta dish with a rich meat sauce.", rating: 4.5 },
  { name: "Chicken Curry", description: "A spicy and flavorful chicken dish cooked in a creamy sauce.", rating: 4.7 },
  { name: "Vegetable Stir Fry", description: "A quick and healthy dish with mixed vegetables and soy sauce.", rating: 4.2 },
  { name: "Beef Tacos", description: "Soft or hard shell tacos filled with seasoned beef and toppings.", rating: 4.6 }
]
puts "recipes created"
