# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
Movie.destroy_all

10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentence,
    poster_url: "https://www.google.be/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FHollywood_Sign&psig=AOvVaw2WvfgSbTxd1qgmlaeM5CdI&ust=1732887145560000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNi86cmS_4kDFQAAAAAdAAAAABAE",
    rating: rand(5.0..10.0)
  )
end
