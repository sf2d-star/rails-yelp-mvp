# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
chez_lin = { name: 'Chez Lin', address: 'Centre ville Nantes', category: 'chinese' }
bellecuisine = { name: 'Bellecuisine', address: 'Centre ville Nice', category: 'french' }
ramen = { name: 'Sudoko', address: 'Centre ville Tokyo', category: 'japanese' }
pizza = { name: 'Pizza', address: 'Centre ville Roma', category: 'italian' }
brusellien = { name: 'Brusellien', address: 'Centre ville Bruselle', category: 'belgian' }

[chez_lin, bellecuisine, ramen, pizza, brusellien].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
