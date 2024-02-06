# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

puts 'Creating restaurants...'
tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris", phone_number: "01 43 54 23 31", category: "french")
tour_d_argent.save!

chez_gladines = Restaurant.new(name: "Chez Gladines", address: "30 Rue des cinq diamants, 75013 Paris", phone_number: "01 45 80 70 10", category: "french")
chez_gladines.save!

mario_pizzeria = Restaurant.new(name: "Mario Pizzeria", address: "12 Holborn road, W3 4RA London", phone_number: "01 43 54 60 74", category: "italian")
mario_pizzeria.save!

delicious_sushi = Restaurant.new(name: "Delicious Sushi", address: "12 Melburn road, W1 5JA London", phone_number: "01 43 54 60 74", category: "japanese")
delicious_sushi.save!

puts 'Finished!'
