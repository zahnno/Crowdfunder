# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(first_name: "Patrick", last_name: "Zanowski", email: "Zanowski26@hotmail.com", password_digest: "koolbeans", image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAZxAAAAJGQxNDNhNDQ3LWRhMTEtNDRjNC05NGEyLTBiOGNmOWVmYTBmNw.jpg")
oculus = Project.create(name: "Oculus Rift", description: "You pull a helmet over your head, and suddenly, you're inside a virtual world that seems completely lifelike. You can run around, fight, race and fly.", start_date: Time.now, end_date: Time.new(2016, 2, 1), funding_goal: 20000, user_id: 1, category_id: 1, image: "http://cdn.gamerant.com/wp-content/uploads/Oculus-Rift-Low-Cost-Release-in-2015-Header-Image.jpg")
patty= Project.create(name: "Patty-z burgers", description: "Get the best tasting burgers yet. Better than mcdonalds and burger kind. Made with 100% beef", start_date: Time.now, end_date: Time.new(2016, 2, 1), funding_goal: 20000, user_id: 1, category_id: 6, image: "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2013/5/1/1/FNM_060113-Thick-Burgers-Recipe_s4x3.jpg.rend.sni18col.landscape.jpeg")
raspberry = Project.create(name: "Raspberry Pi", description: "The Raspberry Pi is a tiny and affordable computer that you can use to learn programming through fun, practical projects.", start_date: Time.now, end_date: Time.new(2016, 2, 1), funding_goal: 20000, user_id: 1, category_id: 2, image: "https://rasplapse.files.wordpress.com/2012/06/pi_white.jpg")

reward1= Reward.create(title:"oculus rift Tshirt", description:"Get your very own oculus rift tshirt to show your support!", amount: 20, project_id: 1, image:"http://www.geek.com/wp-content/uploads/2012/08/oculus_01.jpg")
reward2= Reward.create(title:"Free burger!", description:"Get your first burger free at patty-z burgers. It's delicious we know!", amount: 10, project_id: 2, image:"http://bhbbottawa.ca/wp-system/uploads/2012/01/buger.png")
reward3= Reward.create(title:"raspberry Pi Tshirt!", description:"Get your very own Raspberry Pi tshirt to show your support!", amount: 5, project_id: 3, image:"https://www.adafruit.com/images/1200x900/1418-00.jpg")

games = Category.create(name: "Games", category_id: 1, image: "https://cdn3.iconfinder.com/data/icons/computer-network-icons/512/Controller-512.png")
technologies = Category.create(name: "Technology", category_id: 2, image: "http://jeremydebeer.ca/wp-content/uploads/2014/06/jdb-infographics2014_1.png")
art = Category.create(name: "Art", category_id: 3, image:"http://kensingtonartsupply.com/kas/wp-content/uploads/2014/06/kensington-art-supply-banner-creativity1.jpg")
music = Category.create(name: "Music", category_id: 4, image: "http://a1238.phobos.apple.com/us/r30/Purple3/v4/ae/af/90/aeaf9080-e585-49ce-ab88-4bad6df821f5/pr_source.png?downloadKey=1416957511_b1a1d2451534727d5149778e5c00e420")
film = Category.create(name: "Film & Video", category_id: 5, image:"http://api.ning.com/files/6q4t4dNL56m4w-ST9b0OuApBUh4dgCIChAS1Gz176c*GyTeSgdEzjxtM2iHhi-UL7rNhjXfoZRlFojDiq97K9bkgl92UxsTV/Clapperboard.jpg")
food = Category.create(name: "Food", category_id: 6, image:"http://www.aboutmcdonalds.com/content/dam/AboutMcDonalds/2.0/images/map/regions/north-america/food2.png")