# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Route.destroy_all
Stop.destroy_all

Route.create(name: "Niko", direction: "East/West", total_distance: 2850)
Route.create(name: "Olivia", direction: "Easst/West", total_distance: 3000)
Route.create(name: "Max", direction: "North/South", total_distance: 1500)



route_niko_cities = ["New York", "Philadelphia", "Pittsburgh", "Cleveland", "Chicago", "Milwaukee", "Minneapolis", "Salt Lake City", "Portland", "Seattle"]

route_olivia_cities = ["Washington DC", "Charlotte", "Atlanta", "New Orleans", "Houston", "Austin", "Albuquerque", "Phoenix", "Los Angeles", "San Francisco"]

route_max_cities = ["Miami", "Tampa", "Orlando", "Jacksonville", "Charleston", "Raleigh", "Richmond", "Baltimore", "Trenton", "Boston"]

route_niko_cities.each do |city|
    Stop.create(city_name: city, route_id: Route.find_by(name: "Niko").id)
end

route_olivia_cities.each do |city|
    Stop.create(city_name: city, route_id: Route.find_by(name: "Olivia").id)
end

route_max_cities.each do |city|
    Stop.create(city_name: city, route_id: Route.find_by(name: "Max").id)
end

