User.create([
  { name: "Zak Niazi", email: "zniazi1029@gmail.com", password: "123456", admin: true},
  { name: "John Redwood", email: "redskins@gmail.com", password: "123456"},
  { name: "Mary Lou", email: "mary@gmail.com", password: "123456"},
  { name: "Ryan Pesch", email: "ryan@gmail.com", password: "123456"}
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

food_id = Category.find_by_name("Food").id

Category.create([
  { name: "Bacon", category_id: food_id }, { name: "Community Gardens", category_id: food_id },
  { name: "Cookbooks", category_id: food_id }, { name: "Drinks", category_id: food_id },
  { name: "Events", category_id: food_id }, { name: "Farmer's Markets", category_id: food_id },
  { name: "Farms", category_id: food_id }, { name: "Food Trucks", category_id: food_id },
  { name: "Restaurants", category_id: food_id }, { name: "Small Batch", category_id: food_id },
  { name: "Spaces", category_id: food_id }, { name: "Vegan", category_id: food_id }
])

Location.create([
  { name: "New York"}, { name: "San Fransisco" }, { name: "London"}, { name: "Sydney" },
  { name: "Los Angeles"}, { name: "Beijing" }, { name: "Pelican Rapids, MN"}
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

Project.create([
  { title: "Lida Farm Deep Winter Greenhouse and Root Cellar Project", user_id: 4,
    end_date: DateTime.now + 45.days,
    category_id: Category.find_by_name("Food").id, subcategory_id: Category.find_by_name("Farms").id, goal: 5000,
    location_id: 7, blurb: "This deep winter greenhouse/root cellar project extends our growing year round to overcome terrible weather and bad food in Northern MN",
    description: "The Main Idea:  We would like to take winter vegetable production in Northern Minnesota to a new level.  A number of other farms in our region have built 'deep winter greenhouses, a passive-solar design which successfully uses a warm air pumped into a heat sink underground to moderate temperatures (info on current designs).  In a climate where we can reach -20 to -30 degrees and long stretches of sub-zero weather, we propose to add another heating layer to our friends' current designs by adding solar thermal panels.  The greenhouse will allow us to grow cold-tolerant greens through the entire winter. We will complement these greens with storage crops from an attached root cellar, which is also part of the project.  Since we are veterans of vegetable production in Minnesota, we feel this is the right move to extend our season and meet the needs of local eaters in search of good food at a time of the year when we most crave it.  Backers can benefit directly by becoming members of our winter CSA or indirectly by supporting this low-energy solution to winter food production.  We will translate our learnings to other farmers."
  }
])

Reward.create([
  { pledge: 10, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 3 },
  { pledge: 20, description: "Cool official Lida Farm supporter sticker plus a place on the dedication wall in the greenhouse. You will also receive a thank you postcard of the completed project. Ships anywhere in the US.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: 3 },
  { pledge: 15, description: "Receive a place on the dedication wall in the deep winter greenhouse and a thank you postcard of the completed project.", delivery_date: DateTime.new(2014, 2, 1),
    shipping_type: 1, project_id: 3 },
  { pledge: 30, description: "Instant herb garden. Receive with a mix of plants raised in the greenhouse, such as basil, rosemary, thyme, lavender, and oregano so you are set for next summer. You must pick up on farm. You will also receive a place on dedication wall and thank you postcard.", delivery_date: DateTime.new(2014, 5, 1),
    shipping_type: 1, project_id: 3, limit: 30 },
  { pledge: 30, description: "Pepper plant mix. Get a start on your garden with this mix of 12 organically-grown pepper plants. You must PICK UP at FARM. You will also receive a place on dedication wall and thank you postcard.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 3, limit: 20 },
  { pledge: 50, description: "One box of Lida Farm-raised foods including winter greens and storage veggies for pickup on farm or delivered within 25 miles of the farm. You will also receive a thank you postcard and a place on our dedication wall.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 3, limit: 25 },
  { pledge: 60, description: "Winter on-farm dinner to christen new deep winter greenhouse and root cellar for two people plus a thank you postcard and place on the dedication wall.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 3, limit: 20 },
  { pledge: 150, description: "For the 'I-want-to-directly-support-clean-energy' kind of person, you get naming rights to one of the solar thermal evacuated tubes collectors dedicated with a commemorative plaque. These highly-efficient tubes collect and concentrate solar heat, which directly heats the greenhouse and also charges underground storage for when the sun isn't shining. This pledge amount fetches admittance for two to our deep winter greenhouse christening dinner. You will also receive a thank you postcard and a place on the dedication wall.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 3, limit: 2 },
  { pledge: 300, description: "One winter CSA share. Receive one season of storage crops and winter greens (5 deliveries between November and March). You will also receive a thank you postcard, a place on the dedication wall, and an invitation to the deep winter christening party on-farm. Delivery of CSA shares is only available in our regular delivery area of Fergus Falls, Detroit Lakes, Pelican Rapids, and nearby lakes areas unless willing to pick up at farm.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: 3, limit: 8 },
  { pledge: 350, description: "One every-other week CSA summer share. Receive a delivery of produce in season every other week during our typical summer season (late June through Oct). You will also receive a thank you postcard, a place on the dedication wall, and an invitation to the deep winter christening party on-farm. Delivery of CSA shares is only available in our regular delivery area of Fergus Falls, Detroit Lakes, Pelican Rapids, and nearby lakes areas unless willing to pick up at farm.", delivery_date: DateTime.new(2014, 2, 1),
    shipping_type: 1, project_id: 3, limit: 30 },
  { pledge: 1000, description: "The 'I'm-all-in' share. Receive two seasons of the winter CSA (5 deliveries in winter 2014-15 and 5 deliveries in winter 2015-16) plus a full season to our traditional summer CSA (every week for 16 weeks from late June - Oct). You will also receive the thank you postcard, a place on the dedication wall, and invitation to the deep winter christening party for two. Delivery of CSA shares is only available in our regular delivery area in Fergus Falls, Detroit Lakes, Pelican Rapids, and nearby lakes areas unless willing to pick up at farm.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 3, limit: 5 }
])

2.times do
  Pledge.create({ user_id: 1, reward_id: 7})
end

5.times do
  Pledge.create({ user_id: 2, reward_id: 9})
end

2.times do
  Pledge.create({ user_id: 3, reward_id: 10})
end

2.times do
  Pledge.create({ user_id: 1, reward_id: 12})
end

2.times do
  Pledge.create({ user_id: 2, reward_id: 13})
end

2.times do
  Pledge.create({ user_id: 3, reward_id: 14})
end

4.times do
  Pledge.create({ user_id: 1, reward_id: 15})
end

Pledge.create([
  { user_id: 2, reward_id: 16 }, { user_id: 3, reward_id: 17 }
])














# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)