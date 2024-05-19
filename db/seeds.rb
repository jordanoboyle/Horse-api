# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Horse.create(name: "Ed", color: "brown", weight: 655, price: 9000)
Horse.create(name: "Harley", color: "black", weight: 765, price: 15000)
Horse.create(name: "Flower Blossom", color: "white, brown spots", weight: 734, price: 12000)
Horse.create(name: "Liberty", color: "grey", weight: 801, price: 19500)
