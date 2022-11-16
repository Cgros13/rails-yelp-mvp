# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "0238764983"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french", phone_number: "0745236938"}
five_guys =  {name: "Five Guys", address: "East London", category: "italian", phone_number: "061639373719"}
ghost_burger =  {name: "Ghost Burger", address: "56A Shoreditch High St, South London", category: "japanese", phone_number: "063716161829"}
chicken_time =  {name: "Chicken Time", address: "Shoreditch High", category: "belgian", phone_number: "062037389374"}

[dishoom, pizza_east, five_guys, ghost_burger, chicken_time].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
