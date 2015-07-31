# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.delete_all
 
puts "Creating cities"
 
cities = City.create!([{name: "Cape Town", description: "x", image: "http://stock-free-images.net/pictures/24/images/cape-town-south-africa-hd-wallpaper.jpg"}, 
	 {name: "Johannasburg", description: "x", image: "http://thumbs.dreamstime.com/x/johannesburg-cbd-aerial-view-14146879.jpg"},
	 {name: "Manchester", description: "x", image: "http://i.telegraph.co.uk/multimedia/archive/02691/townhall_2691886b.jpg"}])

# puts "Creating campaigns"

# campaigns = Campaign.create({[]})