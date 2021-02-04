# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customers = Customer.create([{name: "Boozy Suzy"}, {name: "Drunk Derek"}, {name: "Thirsty Thaddeus"}, {name: "Flirty Felicia"}])
items = Item.create([{name: "Mimosa", price: 5.00},
        {name: "Bloody Mary", price: 6.00},
        {name: "Bellini", price: 5.00},
        {name: "Beer", price: 7.00},
        {name: "House Cocktail", price: 10.00},
        {name: "Sangria", price: 8.00},
        {name: "House Wine", price: 7.00},
        {name: "Pitcher of Mimosa", price: 15.00},
        {name: "Pitcher of Bellini", price: 15.00}])