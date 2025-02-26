# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data (optional)
Place.destroy_all

# Create Places
barbados = Place.create!(name: "Barbados")
namibia = Place.create!(name: "Namibia")
cuba = Place.create!(name: "Cuba")

# Create Entries for Barbados
barbados.entries.create!(title: "Visit the beach", description: "Had a nice time with my wife and daughter on the beach", date: Date.new(2025, 2, 2))
barbados.entries.create!(title: "Went to the restaurant", description: "Fancy restaurant for dinner with my wife (No kids!)", date: Date.new(2025, 2, 6))

# Create Entries for Namibia
namibia.entries.create!(title: "Drive through Etosha park", description: "OMG, we saw a lion!", date: Date.new(2019, 1, 6))

# Create Entries for Cuba
cuba.entries.create!(title: "Cienfuegos visit", description: "Walk around the city, nice 'jazzy' vibes", date: Date.new(2016, 1, 12))
cuba.entries.create!(title: "Raposa e el Cuervo", description: "Night at the jazz bar. Great musicians doing a lot of improv!", date: Date.new(2016, 1, 16))