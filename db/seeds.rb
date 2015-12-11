# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

games = Category.create(name: "Games", category_id: 1, image: "https://cdn3.iconfinder.com/data/icons/computer-network-icons/512/Controller-512.png")
technologies = Category.create(name: "Technology", category_id: 2, image: "http://jeremydebeer.ca/wp-content/uploads/2014/06/jdb-infographics2014_1.png")
art = Category.create(name: "Art", category_id: 3, image:"http://kensingtonartsupply.com/kas/wp-content/uploads/2014/06/kensington-art-supply-banner-creativity1.jpg")
music = Category.create(name: "Music", category_id: 4, image: "http://a1238.phobos.apple.com/us/r30/Purple3/v4/ae/af/90/aeaf9080-e585-49ce-ab88-4bad6df821f5/pr_source.png?downloadKey=1416957511_b1a1d2451534727d5149778e5c00e420")
film = Category.create(name: "Film & Video", category_id: 5, image:"http://api.ning.com/files/6q4t4dNL56m4w-ST9b0OuApBUh4dgCIChAS1Gz176c*GyTeSgdEzjxtM2iHhi-UL7rNhjXfoZRlFojDiq97K9bkgl92UxsTV/Clapperboard.jpg")
food = Category.create(name: "Food", category_id: 6, image:"http://www.aboutmcdonalds.com/content/dam/AboutMcDonalds/2.0/images/map/regions/north-america/food2.png")