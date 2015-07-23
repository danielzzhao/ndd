# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.delete_all
 
puts "Creating cities"
 
cities = City.create([{name: "Cape Town", description: "The Mother City"}, {name: "New York", description: "The Big Apple"}])

# puts "Creating campaigns"

# campaigns = Campaign.create({[]})