# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

games = Category.create(name: "Games", category_id: 1)
technologies = Category.create(name: "Technology", category_id: 2)
art = Category.create(name: "Art", category_id: 3)
music = Category.create(name: "Music", category_id: 4)
film = Category.create(name: "Film & Video", category_id: 5)
food = Category.create(name: "Food", category_id: 6)
craft = Category.create(name: "Crafts", category_id: 7)