User.create([
  { name: "Zak Niazi", email: "zniazi1029@gmail.com", password: "123456"},
  { name: "John Redwood", email: "redskins@gmail.com", password: "123456"},
  { name: "Mary Lou", email: "mary@gmail.com", password: "123456"}
])

Category.create([
  { name: "Art" }, { name: "Comics" }, { name: "Crafts" }, { name: "Dance" },
  { name: "Design" }, { name: "Fashion" }, { name: "Film & Video" }, { name: "Food" },
  { name: "Games" }, { name: "Journalism" }, { name: "Music" }, { name: "Photography" },
  { name: "Publishing" }, { name: "Technology" }, { name: "Theater" }
])

art_id = Category.find_by_name("Art").id

Category.create([
  { name: "Ceramics", category_id: art_id }, { name: "Conceptual Art", category_id: art_id },
  { name: "Digital Art", category_id: art_id }, { name: "Illustration", category_id: art_id },
  { name: "Installations", category_id: art_id }, { name: "Mixed Media", category_id: art_id },
  { name: "Painting", category_id: art_id }, { name: "Performance Art", category_id: art_id },
  { name: "Public Art", category_id: art_id }, { name: "Sculpture", category_id: art_id },
  { name: "Textiles", category_id: art_id }, { name: "Video Art", category_id: art_id }
])

comics_id = Category.find_by_name("Comics").id

Category.create([
  { name: "Anthologies", category_id: comics_id }, { name: "Comic Books", category_id: comics_id },
  { name: "Events", category_id: comics_id }, { name: "Graphic Novels", category_id: comics_id },
  { name: "Webcomics", category_id: comics_id }
])

crafts_id = Category.find_by_name("Crafts").id

Category.create([
  { name: "Candles", category_id: crafts_id }, { name: "Crochet", category_id: crafts_id },
  { name: "DIY", category_id: crafts_id }, { name: "Embroidery", category_id: crafts_id },
  { name: "Glass", category_id: crafts_id }, { name: "Knitting", category_id: crafts_id },
  { name: "Letterpress", category_id: crafts_id }, { name: "Pottery", category_id: crafts_id },
  { name: "Printing", category_id: crafts_id }, { name: "Quilts", category_id: crafts_id },
  { name: "Stationery", category_id: crafts_id }, { name: "Taxidermy", category_id: crafts_id },
  { name: "Weaving", category_id: crafts_id }, { name: "Woodworking", category_id: crafts_id }
])

Location.create([
  { name: "New York"}, { name: "San Fransisco" }, { name: "London"}, { name: "Sydney" },
  { name: "Los Angeles"}, { name: "Beijing" },
])

Project.create([
  { user_id: 1, title: "Bublcam", category_id: Category.find_by_name("Technology").id,
    blurb: "Best camera in the world.", location_id: 1, end_date: DateTime.now + 30.days,
    goal: 100_000, description: "I will change the future of imaging.",
    challenges: "Being too awesome."},
  { user_id: 1, title: "Gravy Pie", category_id: Category.find_by_name("Food").id,
    blurb: "I enjoy gravy pie.", location_id: 2, end_date: DateTime.now + 10.days,
    goal: 10_000, description: "I will change the future of gravy.",
    challenges: "Being too delicious."}
])

Reward.create([
  { pledge: 50, description: "Low tier", delivery_date: DateTime.now + 2.years,
    shipping_type: 1, project_id: 1 },
  { pledge: 500, description: "Mid tier", delivery_date: DateTime.now + 2.years,
    shipping_type: 1, project_id: 1 },
  { pledge: 5000, description: "Premium tier", delivery_date: DateTime.now + 2.years,
    shipping_type: 1, project_id: 1 },
  { pledge: 10, description: "Low tier", delivery_date: DateTime.now + 2.years,
    shipping_type: 1, project_id: 2 },
  { pledge: 100, description: "Mid tier", delivery_date: DateTime.now + 2.years,
    shipping_type: 1, project_id: 2 },
  { pledge: 1000, description: "Premium tier", delivery_date: DateTime.now + 2.years,
    shipping_type: 1, project_id: 2 }
])

Pledge.create([
  { user_id: 2, reward_id: 1 }, { user_id: 3, reward_id: 3 },
  { user_id: 2, reward_id: 4 }, { user_id: 3, reward_id: 5 }
])















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)