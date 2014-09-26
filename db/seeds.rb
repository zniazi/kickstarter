#encoding: utf-8

User.create([
  { name: "Zak Niazi", email: "zniazi1029@gmail.com", password: "123456", admin: true},
  { name: "John Redwood", email: "redskins@gmail.com", password: "123456"},
  { name: "Mary Lou", email: "mary@gmail.com", password: "123456"},
  { name: "Ryan Pesch", email: "ryan@gmail.com", password: "123456"}
])

Category.create([
  { name: "Art", color: "#ffbdab", font_color: "black" }, { name: "Comics", color: "#fffb78", font_color: "black" },
  { name: "Crafts", color: "#ff81ac", font_color: "white" }, { name: "Dance", color: "#a695f9", font_color: "white" },
  { name: "Design", color: "#3e59f8", font_color: "white" }, { name: "Fashion", color: "#ff9fd6", font_color: "white" },
  { name: "Film & Video", color: "#ff596e", font_color: "white" }, { name: "Food", color: "#ff3642", font_color: "white" },
  { name: "Games", color: "#00c9ab", font_color: "white" }, { name: "Journalism", color: "#12bcea", font_color: "white" },
  { name: "Music", color: "#a5ffd3", font_color: "black" }, { name: "Photography", color: "#00e3e5", font_color: "white" },
  { name: "Publishing", color: "#e2dcd0", font_color: "black" }, { name: "Technology", color: "#6396fc", font_color: "white" },
  { name: "Theater", color: "#ff7d5f", font_color: "white" }
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

dance_id = Category.find_by_name("Dance").id

Category.create([
  { name: "Performances", category_id: dance_id }, { name: "Residencies", category_id: dance_id },
  { name: "Spaces", category_id: dance_id }, { name: "Workshops", category_id: dance_id }
])

design_id = Category.find_by_name("Design").id

Category.create([
  { name: "Architecture", category_id: design_id }, { name: "Civic Design", category_id: design_id },
  { name: "Graphic Design", category_id: design_id }, { name: "Interactive Design", category_id: design_id },
  { name: "Product Design", category_id: design_id }, { name: "Typography", category_id: design_id }
])

fashion_id = Category.find_by_name("Fashion").id

Category.create([
  { name: "Accessories", category_id: fashion_id }, { name: "Apparel", category_id: fashion_id },
  { name: "Childrenswear", category_id: fashion_id }, { name: "Couture", category_id: fashion_id },
  { name: "Footwear", category_id: fashion_id }, { name: "Jewelery", category_id: fashion_id },
  { name: "Pet Fashion", category_id: fashion_id }, { name: "Ready-to-wear", category_id: fashion_id }
])

film_id = Category.find_by_name("Film & Video").id

Category.create([
  { name: "Action", category_id: film_id }, { name: "Animation", category_id: film_id },
  { name: "Comedy", category_id: film_id }, { name: "Documentary", category_id: film_id },
  { name: "Drama", category_id: film_id }, { name: "Experimental", category_id: film_id },
  { name: "Family", category_id: film_id }, { name: "Fantasy", category_id: film_id },
  { name: "Festivals", category_id: film_id }, { name: "Horror", category_id: film_id },
  { name: "Movie Theaters", category_id: film_id }, { name: "Music Videos", category_id: film_id },
  { name: "Narrative Film", category_id: film_id }, { name: "Romance", category_id: film_id },
  { name: "Science Fiction", category_id: film_id }, { name: "Shorts", category_id: film_id },
  { name: "Television", category_id: film_id }, { name: "Thrillers", category_id: film_id },
  { name: "Webseries", category_id: film_id }
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

games_id = Category.find_by_name("Games").id

Category.create([
  { name: "Gaming Hardware", category_id: games_id }, { name: "Live Games", category_id: games_id },
  { name: "Mobile Games", category_id: games_id }, { name: "Playing Cards", category_id: games_id },
  { name: "Puzzles", category_id: games_id }, { name: "Tabletop Games", category_id: games_id },
  { name: "Video Games", category_id: games_id }
])

journalism_id = Category.find_by_name("Journalism").id

Category.create([
  { name: "Audio", category_id: journalism_id }, { name: "Photo", category_id: journalism_id },
  { name: "Print", category_id: journalism_id }, { name: "Video", category_id: journalism_id },
  { name: "Web", category_id: journalism_id }
])

music_id = Category.find_by_name("Music").id

Category.create([
  { name: "Blues", category_id: music_id }, { name: "Chiptune", category_id: music_id },
  { name: "Classical Music", category_id: music_id }, { name: "Country & Folk", category_id: music_id },
  { name: "Electronic Music", category_id: music_id }, { name: "Faith", category_id: music_id },
  { name: "Hip-Hop", category_id: music_id }, { name: "Indie Rock", category_id: music_id },
  { name: "Jazz", category_id: music_id }, { name: "Kids", category_id: music_id },
  { name: "Latin", category_id: music_id }, { name: "Metal", category_id: music_id },
  { name: "Pop", category_id: music_id }, { name: "Punk", category_id: music_id },
  { name: "R&B", category_id: music_id }, { name: "Rock", category_id: music_id },
  { name: "World Music", category_id: music_id }
])

photography_id = Category.find_by_name("Photography").id

Category.create([
  { name: "Animals", category_id: photography_id }, { name: "Fine Art", category_id: photography_id },
  { name: "Nature", category_id: photography_id }, { name: "People", category_id: photography_id },
  { name: "Photobooks", category_id: photography_id }, { name: "Places", category_id: photography_id }
])

publishing_id = Category.find_by_name("Publishing").id

Category.create([
  { name: "Academic", category_id: publishing_id }, { name: "Anthologies", category_id: publishing_id },
  { name: "Art Book", category_id: publishing_id }, { name: "Calendars", category_id: publishing_id },
  { name: "Children's Book", category_id: publishing_id }, { name: "Fiction", category_id: publishing_id },
  { name: "Literary Journals", category_id: publishing_id }, { name: "Nonfiction", category_id: publishing_id },
  { name: "Periodical", category_id: publishing_id }, { name: "Poetry", category_id: publishing_id },
  { name: "Radio & Podcast", category_id: publishing_id }, { name: "Translations", category_id: publishing_id },
  { name: "Young Adult", category_id: publishing_id }, { name: "Zines", category_id: publishing_id }
])

technology_id = Category.find_by_name("Technology").id

Category.create([
  { name: "3D Printing", category_id: technology_id }, { name: "Apps", category_id: technology_id },
  { name: "Camera Equipment", category_id: technology_id }, { name: "DIY Electronics", category_id: technology_id },
  { name: "Fabrication Tools", category_id: technology_id }, { name: "Flight", category_id: technology_id },
  { name: "Gadgets", category_id: technology_id }, { name: "Hardware", category_id: technology_id },
  { name: "Makerspaces", category_id: technology_id }, { name: "Robots", category_id: technology_id },
  { name: "Software", category_id: technology_id }, { name: "Sound", category_id: technology_id },
  { name: "Space Exploration", category_id: technology_id }, { name: "Wearables", category_id: technology_id },
  { name: "Web", category_id: technology_id }
])

theater_id = Category.find_by_name("Theater").id

Category.create([
  { name: "Experimental", category_id: theater_id }, { name: "Festivals", category_id: theater_id },
  { name: "Immersive", category_id: theater_id }, { name: "Musicals", category_id: theater_id },
  { name: "Plays", category_id: theater_id }, { name: "Spaces", category_id: theater_id }
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

User.create({ name: "S.D. Lord", email: "sd@gmail.com", password: "123456"})

Project.create([
  { title: "Canine Anatomy Sculpture", user_id: User.find_by_name("S.D. Lord").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Art").id, subcategory_id: Category.find_by_name("Sculpture").id, goal: 3500,
    location_id: Location.find_or_create_by(name: "New York").id, blurb: "Canine Anatomy Sculpture in the spirit the Animaliers of the 19th Century. Great for reference, research or displayed as fine art.",
    description: "Inspiration for the Canine Anatomy Sculpture. I have always been enamored with such artists as Isidore Bonheur, Antoine Louis Barye and the other Animaliers of the 19th Century. Bonheur's ecorche (pronounced ey-kawr-shey, meaning skinned) horse sculpture in particular, has been a staple for art students the world over. Bonheur's horse was the only quality animal ecorche sculpture that was available to own outside of a museum and it's over a hundred years old! I thought it was high time to bring back the spirit of that bygone era and push it into the 21st century.
The Canine Anatomy Sculpture is 7 inches high and 9 inches in length shows superficial and deep muscles. I chose to show deep muscles on the left side that are important in understanding the forms underneath the superficial muscles. The color will have a greenish tint indicative of the popular ceramic glazing color during the Arts and Crafts Movement. The sculpture focuses on the shapes and transitions of the muscles which in turn create the silhouettes. Coloring could vary slightly from piece to piece since they are made one at a time. They are cast in a high quality non shrinking Resin.
The Sculpture is produced by a few highly trained Artisans in the United States. I will personally go over every piece before it is shipped.
If the project is successful it will help me create many more anatomical studies and give the public something they haven't seen in over 100 years. I have projects in line for other animal sculptures and eventually human anatomy studies. All these sculptures are created by me and are true works of art not scans or casts.
The reason why I don't have more funding levels is that I want to give all my energy to giving you a quality piece of art and don't want to be distracted by tchotchkes and miscellaneous (stuff). This is a true Kickstarter it's just me and a few talented artisans creating these pieces of art for you. "
}
])

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 4 },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 4 },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: 4 },
  { pledge: 1000, description: "Receive a place in our hearts.", delivery_date: DateTime.new(2014, 2, 1),
    shipping_type: 1, project_id: 4 }
])

2.times do
  Pledge.create({ user_id: 1, reward_id: 19})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 20})
end

7.times do
  Pledge.create({ user_id: 3, reward_id: 21})
end


User.create({ name: "Careen Stoll", email: "cs@gmail.com", password: "123456"})

Project.create([
  { title: "Fermenting for Health", user_id: User.find_by_name("Careen Stoll").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Art").id, subcategory_id: Category.find_by_name("Ceramics").id, goal: 9400,
    location_id: Location.find_or_create_by(name: "Portland, OR").id, blurb: "CI'm a full-time studio potter making the BMW of fermenting crocks in durable gorgeous porcelain. Help me buy a kiln that works. Thanks!",
    description: "I’m Careen Stoll and I’ve been a full-time studio potter for ten years now if you don't count everything before grad school. I’ve been living simply and firing with wood and waste vegetable oil in the kiln in the video named the Tin Man, but last summer, I had to take him apart and move. So now I’m in a new studio in the country, still working with porcelain but firing in a small electric kiln instead. I’ve been making fermenting crocks and selling them at Portland Homestead Supply. For the first time, I’m experiencing a high demand for my work, so I’m ready for a bigger electric kiln. The one that I have is awkwardly small for large crocks and it recently had a major malfunction. Plus a kiln with a computer controller would use energy more efficiently, which is something that I value highly. Already the work is powered as much as possible by solar energy. I’d like to offer something made in as carbon-neutral a way as possible.
I’d like to tell you a little bit about the fermentation process that happens in the crocks because it does increase the nutritional availability of the food. We all know about sauerkraut, kimchi, and miso. Those very healthy foods are fermented in a jar or crock. Its an anaerobic process in which beneficial bacteria break down the food for you so that more of the vitamins and minerals are available to your body once your own digestive system starts to work on it. I’m a true believer because I see the effects in my own health. I have noticed and I’ve heard from others who use my crocks that they work really well and there’s never any mold growing on the top. I’m sure that is because of the water seal here at the top, which is the German design. I like to think of mine as the BMW of crocks because they are not just made to the highest technical specification, but they are also beautiful and satisfying to touch.
My project is to further my ability to be an independent professional potter but I have fun stuff to offer in the short term. My budget is 2800 for the kiln itself, a Skutt 1227, 660 for kiln furniture, 330 for tax, and 2/3rds remaining is to account for reward production costs at a living wage, shipping, and handling. I can break it down further if you'd like: basically, I am getting too old to settle for less than a living wage, so for all the items that I've offered, I ask 15/ hr to make them.  This is not digital reproduction, and it is not made in China, bless their overworked hearts.
I have a variety of goals, one among them is to get my pots into restaurant use, and I have taken concrete steps towards that. So you’ll see that one reward is to enjoy dinner with me at Biwa restaurant in Portland, or a ticket to a quarterly Japanese Kaiseki supper club that uses my dishes as their service. Another way that I am working and collaborating is in industrial design with Mudshark studios. So one reward is for a Mermaid Cup that is my first experiment in having a production studio replicate my popular mug design. That first edition was for 500 mugs, and they sold at New Seasons Market in the Portland area. And if you go to my website Fire-Keeper.org, you will see photos on the home page of the well-loved Research Club Brunch Box fired in the Tin Man. Designed as a classy but portable way to reduce paper waste, the Brunch Box has been featured at Research Club brunches many times. All of these projects have a cumulative effect on my professional capacity. I am poised to bring quality handmade porcelain to the Portland dining scene, and my crocks to your kitchen as a tool for greater digestive health.
Many thanks for your help!!"
}
])

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 5 },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 5 },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: 5 },
  { pledge: 1000, description: "Receive a place in our hearts.", delivery_date: DateTime.new(2014, 2, 1),
    shipping_type: 1, project_id: 5 }
])

2.times do
  Pledge.create({ user_id: 1, reward_id: 23})
end

1.times do
  Pledge.create({ user_id: 2, reward_id: 24})
end

2.times do
  Pledge.create({ user_id: 3, reward_id: 25})
end

User.create({ name: "Adelheid Zimmerman", email: "az@gmail.com", password: "123456"})

Project.create([
  { title: "Restoration of 16th Century German Longsword Illustrations", user_id: User.find_by_name("Adelheid Zimmerman").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Art").id, subcategory_id: Category.find_by_name("Illustration").id, goal: 3000,
    location_id: Location.find_or_create_by(name: "Portland, OR").id, blurb: "Restoration of the Illustrations from Joachim Meÿer’s “A Foundational Description of the Art of Fencing”",
    description: "Thank you for watching my video and for having interest in this endeavor. Over the last year, I've had a bit of an adventure developing what has become this Kickstarter. This is the story of how I came to this project, what will be accomplished, why I am the perfect person to make it happen, what my progress is so far, and where all this Kickstarter loot is going.
The genesis of this project happened when I attended the Western Martial Arts Workshop hosted by the Chicago Swordplay Guild last September. I arrived at WMAW hardly knowing what to expect, prepared only with a few years of casual instruction in Capo Ferro and a lifelong interest in Sixteenth century Europe. I took classes where I learned many things and had a fantastic time being introduced to a whole new range of delightful weapons. However, the most formative experiences were my conversations with fascinating, intelligent, wise, and otherwise astonishing humans.
Through these conversations, I learned about the Historical European Martial Arts community and the experimental archaeology that they are doing to restore and develop our understanding of Europe’s martial arts. In particular, I spent long hours discussing Life, the Universe, and Everything (especially how it pertains to a life lived with a sword) with Roger Norling and Guy Windsor. These two brilliant and charismatic leaders in the HEMA community welcomed and encouraged me with friendship and knowledge.
The introduction that specifically developed into this project was that of Christopher VanSlambrouck, a co-founder of The Meyer Frei Fechter Guild. He told me about fencing master Joachim Meyer's Opus, A Foundational Description of the Art of Fencing and illustrated by the workshop of Tobias Stimmer first published in 1570.
I have a Bachelor of Fine Arts from The University of Iowa. My coursework focused on the art history of Europe from 1500-1900, specifically the history of printing. In my studio classes, I discovered a particular talent in style mimicry and digital restoration and manipulation. Outside of college, I have pursued a career in freelance graphic design and illustration. Four years ago, I acquired my first letterpress and have since been producing hand printed cards under the imprint Draupnir Press.
Consequently, when Chris showed me the quality of the publicly available illustrations from Meyer’s Art of Fencing, I was disappointed. He then showed me high resolution digital photos of the 1600 Meyer from the private collection of the GdC center of studies. I could not wait to get my hands on them. To gauge interest within the western martial arts community, I digitally restored longsword plate D, sent it off to the engraver, and made a small run of ten letterpress prints at the original size. I brought these prints to the Second Annual Meyer Symposium  where they were enthusiastically received. While there, I had many interesting conversations with attendees about how they use historical illustrations to help them understand the techniques described in texts. It became apparent that there is a clear need from researchers, collectors, and martial artists for high quality reproductions of historical images as research and pedagogic resources."
}
])

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 6 },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 6 },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: 6 },
  { pledge: 1000, description: "Receive a place in our hearts.", delivery_date: DateTime.new(2014, 2, 1),
    shipping_type: 1, project_id: 6 }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 27})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 28})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 30})
end


User.create({ name: "Robert D. Jansen", email: "rj@gmail.com", password: "123456"})

Project.create([
  { title: "Help the doctor make beautiful monsters", user_id: User.find_by_name("Robert D. Jansen").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Art").id, subcategory_id: Category.find_by_name("Digital Art").id, goal: 3000,
    location_id: Location.find_or_create_by(name: "Georgetown, TX").id, blurb: "The high resolution flame fractals of Dr. Bob Jansen are not just mathematical monsters: they could be serious fine art.",
    description: "Help the mad doctor build more monsters. 'His limbs were in proportion, and I had selected his features as beautiful. Beautiful'. Mary Shelley, Frankenstein
The high resolution flame fractals of Dr. Bob Jansen are not just beautiful monsters: they could be serious fine art.
Rewards for supporting R. D. Jansen’s work include downloading the 25 new high resolution (6750 x 4500) images in Folio #9, or choosing from the 255 images of the previous Kickstarter campaigns. Unlimited non-commercial printing is allowed for your own personal art gallery, or as gifts or greeting cards, calendars, etc. There are also large canvas and vinyl prints available as rewards.
Campaign goal of Folio #9 is $500, to support further experimental art work and allow printing for gallery display.The eight (8) previous Jansen Kickstarter campaigns received as much as twenty five (25) times their goal amounts. It could have something to do with the quality of the rewards.
Campaign duration is 40 days, and, as usual, pledges exceeding the goal amount will be used for additional gallery printing and mad artistic exploration."
  }
])

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 7 },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: 7 },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: 7 },
  { pledge: 1000, description: "Receive a place in our hearts.", delivery_date: DateTime.new(2014, 2, 1),
    shipping_type: 1, project_id: 7 }
])

11.times do
  Pledge.create({ user_id: 1, reward_id: 31})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 32})
end

4.times do
  Pledge.create({ user_id: 3, reward_id: 33})
end


User.create({ name: "Luke Brown", email: "luke@gmail.com", password: "123456"})

Project.create([
  { title: "Printing the Sea", user_id: User.find_by_name("Luke Brown").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Art").id, subcategory_id: Category.find_by_name("Illustration").id, goal: 1000,
    location_id: Location.find_or_create_by(name: "San Clemente, CA ").id, blurb: "I am an artist who loves the sea and I want to produce a limited-run of 3 silkscreen posters about it, this is poster #1...",
    description: "Hello world, my name is Luke Brown and despite my crazy video I am a somewhat relatively normal guy. I grew up in Southern California and have been working in the active sports industry since I was 17 and still in high school. I have done work for Hurley, Ocean Pacific, Gotcha, Lost, etc. etc. etc... To some it might seem a glamourous life, but the reality it is work and it is rough. I am a surfer from San Clemente, CA and times have been really difficult lately, so I decided to do my own thing and print some work of my own without art directors and other people making decisions about whether or not what I made was usable or hip enough. That's what this is... the first poster in a series I want to produce as long as I can... I have three designs lined up currently and many more that could come - if I get the funding and people want to own them."
  }
])

p_id = Project.find_by_name("Printing the Sea").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 31})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 32})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 33})
end

User.create({ name: "Ilya Dv", email: "ilya@gmail.com", password: "123456"})

Project.create([
  { title: "Tin", user_id: User.find_by_name("Ilya Dv").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Comics").id, subcategory_id: Category.find_by_name("Comic Books").id, goal: 3500,
    location_id: Location.find_or_create_by(name: "New York, NY").id, blurb: "A space-faring comic of adventure and self-discovery filled with robots and heists.",
    description: "This particular story began on a subway in New York. I started typing dialogue on my phone and the next thing I knew I was evaluating artist proposals from around the world. I found Manuela Soriani (an incredible artist from Italy) and things immediately fell into place. Her style and dedication are incredible. However falling into place has a cost. I'm able to continue funding the comic with my money but incredibly slowly. I'm hoping that with all of your help we can print the first issue and begin working on the next one immediately! We have lot's planned and we'd love to be able to tell this story to you. For a while now I've been slowly funding this project myself. First some character sheets, then a few pages, all done little by little every paycheck. At this time the first issue is entirely written and Manuela is currently working on its tail end. It will take some time for everything to be polished as this is currently only supported by me. However with wads of cash at my disposal I can give them to Manuela and a print shop and Issue 1 will be done in no time and we could even start Issue 2!"
  }
])

p_id = Project.find_by_name("Tin").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 34})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 35})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 36})
end

User.create({ name: "Kevin Yee-Chan", email: "kevin@gmail.com", password: "123456"})

Project.create([
  { title: "Fiji Dance Residency: finding unity through diversity", user_id: User.find_by_name("Kevin Yee-Chan").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Dance").id, subcategory_id: Category.find_by_name("Residencies").id, goal: 15000,
    location_id: Location.find_or_create_by(name: "Isle of Wight, UK").id, blurb: "An emerging choreographer moving his way to a dance company in Fiji, where new ideas and works will flourish.",
    description: "As artists, we never stop learning and growing. Part of being an artist is being open to new sources of inspiration and adding them to your toolbox for growth. This has been a vital part of my work as a choreographer thus far, and as I embark on my next project I’d like to share that experience with you!
   VOU is a dance company in Fiji that honors their traditional roots and simultaneously looks toward the future. Since 2007, they have been creating original music, dance, videos, and fashion to fuse their ancestral roots with the modern world we live in today. While this broad range of creation continues to bring them much success on tour internationally, they are now interested in bringing inspirations from around the world to their home in Suva, Fiji.
   This project- the VOU Dance Residency- invites choreographers from around the world to train, teach, dance with, and choreograph on the company at their home base in Fiji. It is an opportunity to learn, exchange, and create something together that will be entirely new… in Fijian, something VOU. It’s an adventure that I’m very excited to embark on and that I hope you will follow.
   My mission is to create communities, atmospheres, and performances where people have the courage to live openly and honestly. There is a beauty in transparency that we can all relate to as human beings… regardless of race, language, gender, age, or any other insignificant barrier that we create for ourselves. When we put all those barriers aside and learn to love and express our true beings we realize that, yes, we are all different… but all those differences make us the same. I’m constantly in search for this unity in diversity and I am sure that this residency with VOU will only add to the richness in my work as a choreographer, performer, teacher of yoga and dance, and beyond.
   In order to make this happen, I’m asking for your help. This residency and my choreographic creation are going to require financial support, and the more I get from you, the more easily and generously I can give back to the art. This Kickstarter has two goals: to spread the word about this beautiful project and to raise funds for travel, video editing, and production costs such as sets and props. I hope you’ll follow this project and make a contribution- there is no donation too small or too large, and there are lots of great prizes to share. Vinaka vaka levu! "
  }
])

p_id = Project.find_by_name("Fiji Dance Residency: finding unity through diversity").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 40})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 41})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 42})
end

User.create({ name: "Duncan Shotton", email: "duncan@gmail.com", password: "123456"})

Project.create([
  { title: "Sticky Page Markers", user_id: User.find_by_name("Duncan Shotton").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Design").id, goal: 26000,
    location_id: Location.find_or_create_by(name: "Tokyo, Japan").id, blurb: "Create miniature scenes and landscapes whilst marking the important pages of your books, catalogs and documents.",
    description: "When we find something that's important, inspiring, or just worth noting, it's useful to flag the page for quick reference later.
The concept design for these sticky page markers came from thinking about what these flags could become not just as charming things on their own, but as a collection.
Use these paper post-its to bookmark pages containing important or lovely quotes, photos and sections of books, catalogs and documents, and create a miniature landscape as you go!
Each pack of markers are mounted on and presented in a simple card wrap, then placed inside a clear wrapper. A simple design that makes a great gift.
Images used in this campaign are illustrations, not finished products (see IMAGES section below for more details).
There are 10 pack-types, which can be used on their own, or mixed with markers from other packs"
  }
])

p_id = Project.find_by_name("Sticky Page Markers").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 43})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 44})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 45})
end

User.create({ name: "Brooklyn Boot", email: "brooklyn@gmail.com", password: "123456"})

Project.create([
  { title: "Brooklyn Boot Company", user_id: User.find_by_name("Brooklyn Boot").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Fashion").id, subcategory_id: Category.find_by_name("Footwear").id,goal: 26000,
    location_id: Location.find_or_create_by(name: "Martinsburg, PA").id, blurb: "We're making top-quality boots in the USA and cutting out the retail markup in order to make our products more accessible.",
    description: "Hello Kickstarter! We happen to know a thing or two about the value of American craftsmanship, especially when it comes to shoes. We also know that while American-made shoes offer quality and dependability, they’re getting harder and harder to find. Why? Because generally, stuff made here tends to cost more to make than it does overseas. You’re paying for American real estate, workers, warehousing costs and typically high-quality materials. Add to all of that the markup cost implemented by retailers and you’ve got a pricey product.
Enter Brooklyn Boot Company. We’re taking a new approach to the USA-made process: crafting top-quality American-made shoes at a price Americans can afford to pay. And we’re doing it by shipping our boots directly to you from our facilities.
We’re making a boot that’d typically retail around $300 and offering it to you for $175. Why are we doing this? Because we’ve noticed a real problem with the current domestic-made market – things made here simply cost more than a lot of Americans are willing to spend. To combat this, we’ve developed a price model that eliminates the middleman – this means we will be selling to absolutely NO RETAILERS. Our direct-to-consumer model will cut out the middleman markup, allowing us to pass the savings your way."
  }
])

p_id = Project.find_by_name("Brooklyn Boot Company").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 46})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 47})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 48})
end

User.create({ name: "Denis Agarkov", email: "denis@gmail.com", password: "123456"})

Project.create([
  { title: "RUST", user_id: User.find_by_name("Denis Agarkov").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Film & Video").id, subcategory_id: Category.find_by_name("Shorts").id,goal: 800,
    location_id: Location.find_or_create_by(name: "Los Angeles, CA").id, blurb: "RUST is a short film completed in June 2014 for the Make Your Mark PGA competition. Help us get it to festivals.",
    description: "RUST is a short film we completed in June 2014 for the Make Your Mark Producer's Guild of America 51 Hour competition. This story of two brothers separated by WWII explores the concepts of vengeance and redemption.
Make Your Mark is a competition created by the Producer's Guild of America to kickstart new and talented filmmakers. The competition was quite rigorous in its requirements — the film had to be conceived, produced and edited — all within 51 hours from the announcement of the production brief.
This was, undoubtedly, the most intensive learning experience for us and we treated this as an opportunity to create a complete film in just 2 days — something that we wouldn't take on if we weren't presented with the stakes and deadlines that the PGA announced. It is a great challenge to deliver a complete picture in such a short period of time and we felt like this was a great accomplishment for us. Unfortunately, we were not selected into the top 10 semi-finalists(you can watch the selectees' films here). Nonetheless, we believe the story we created needs to go beyond the competition and be seen by a wider audience."
  }
])

p_id = Project.find_by_name("RUST").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 49})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 50})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 51})
end

User.create({ name: "Warren & Bobbi Burton", email: "w&b@gmail.com", password: "123456"})

Project.create([
  { title: "BurtoNZ bakery", user_id: User.find_by_name("Warren & Bobbi Burton").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Food").id, subcategory_id: Category.find_by_name("Restaurants").id,goal: 35000,
    location_id: Location.find_or_create_by(name: "Windsor, CA").id, blurb: "Support the American Dream, by helping this Kiwi fire up the oven in Windsor's first, and only New Zealand style Artisanal Bakery.",
    description: "BurtoNZ bakery, a New Zealand style bakery and artisan bread shop located in Windsor, California, the heart of Sonoma County wine country, was started by the husband and wife team of Warren and Bobbi Burton.
For the Burtons, who have wanted to bring a traditional New Zealand bakery to life here in California for many years, the opening of BurtoNZ bakery is a dream come true. Having run a bakery together when they lived in in New Zealand, Warren became a master at baking the delicious local specialties, while Bobbi focused on their decoration and presentation. When they came to California and fell in love with artisan breads, they realized that a bakery that specialized in traditional New Zealand baked goods and artisan breads was a winning combination. After 20+ years in a viticulturist career, growing grapes all over the world, Warren was ready to pursue his dream. He attended the prestigious San Francisco Baking Institute to learn how to bake Artisan breads, and graduated at the top of his class.
While Warren has dedicated himself to the baking, the breads, and honing his craft, Bobbi has focused on managing all of the behind the scenes workings. From the mountains of forms, documents and legal filings that go along with starting any business, to the endless research, and hunting for the best deals on all of the basic necessities to have a fully functioning bakery. And now all of their hard work is finally starting to bear fruit.
Warren and Bobbi believe that sometimes, when you have a dream, and life happens to take you in other directions for a while, the dream never really leaves your heart; it’s just waiting for you to come back and bring it to life.
The Burtons want to THANK YOU for not only helping to bring their dream to life, but for making BurtoNZ bakery a reality!"
  }
])

p_id = Project.find_by_name("BurtoNZ bakery").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 52})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 53})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 54})
end

User.create({ name: "Saar Shai", email: "saar@gmail.com", password: "123456"})

Project.create([
  { title: "King Down", user_id: User.find_by_name("Saar Shai").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Games").id, subcategory_id: Category.find_by_name("Tabletop Games").id,goal: 50000,
    location_id: Location.find_or_create_by(name: "New York, NY").id, blurb: "Blood. Greed. Glory. Honor. A game of Kings, featuring miniatures, spells and the ultimate battle for the throne. (2-4 players)",
    description: "From the four corners of the land come four pretenders to the throne, each claiming to be the rightful heir. As the four would-be Kings march towards the capitol, they gather their armies, preparing for battle. Described as ‘the prequel to Chess’, King Down incorporates age-old, intricate and fascinating mechanics from ‘the Game of Kings’ but breaks all the rules by reimagining the classic pieces, introducing brand new characters, and including new spell cards, strategies, tactics and win conditions. King Down is a brand new game that will stand the test of time and last the ages.
    'King Down is really its own game with new objectives and a very different feel. And it doesn’t hurt that it looks spectacular. Whether you like chess or not, King Down is worth checking out.' GeekDad"
  }
])

p_id = Project.find_by_name("King Down").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 55})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 56})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 57})
end

User.create({ name: "Kate Forristall", email: "kate@gmail.com", password: "123456"})

Project.create([
  { title: "#IRL: How I found real community in a virtual world", user_id: User.find_by_name("Kate Forristall").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Journalism").id, subcategory_id: Category.find_by_name("Video").id,goal: 4800,
    location_id: Location.find_or_create_by(name: "Kansas City, MO").id, blurb: "Can you really get to know people 140 characters at a time?",
    description: "In 2009 when I joined Twitter, I had no idea that it would change my life. Through a period of significant and sometimes painful transition, this very modern tool created for me a very old-fashioned concept--community. If I've learned one thing, it's that the global village is as real as you want it to be--that you can find mentors, class clowns and activists living on the same street and willing to teach all the things you've been longing to know, plus a few that you didn't know existed (Hellooo FIFA soccer).

Project #IRL is about the joy, wisdom, and expanded horizons that the global village gave me, but also about how that experience created a desire to know more. I wanted to understand why I felt so connected to people I'd never met--to see up close whether we had things in common that went far deeper than our surface dissimilarities. I wanted to see them in the places that shaped them, hear their stories, buy them a meal, and thank them for the way their presence somehow made me feel at home.

So I emailed 30+ people I follow on Twitter and asked if they would let me visit them and see their "real lives." Twenty-two have said yes, (there may be others who trickle in) and so I will travel via planes, trains and automobiles to meet them in person. I'll be blogging and tweeting as I go and my plan is to write a book about them and the experience of digital community and real-life interaction.

AN IMPORTANT NOTE
This is a 21 day project, so please give sooner rather than later!
If I raise more money than my goal I will use it for video production since many people suggested this would be a good documentary. I agree and would LOVE to raise enough to film this project.
If there are any profits as a result of this project, they will be split 50/50. between participants and myself.
My budget covers travel costs, meals for myself and participants, and the cost of any activities. I will stay with friends and family in all possible locations and will eat and sleep cheap when on my own. I will cover all expenses for participants when we are together.

Here is the list of participants, along with their Twitter handles. They are an amazing group and the best possible reason to donate to this project.

Alexis Wilkinson               @ohgoditsalexis        Cambridge, MA

Ann Friedman                   @annfriedman           Los Angeles, CA

Anna Holmes                    @AnnaHolmes           Brooklyn, NY

Bill Ellis                             @Hokibil                     Copper Hill, VA

Colin McGowan                @cs_mcgowan          Chicago, IL

Daniel Brereton                 @RevDaniel               Toronto, Ontario

David Roth                        @david_j_roth            New York, NY

Debra Avery                      @jazzpastord             Oakland, California

Derecka Purnell                 @progressagent       Cambridge, MA

Favianna Rodriguez           @favianna                Oakland, CA

Hamza Abdullah                @HamzaAbdullah21 Phoenix, AZ

Jade Hadley-Magnus        @darlingjadey           Los Angeles, CA

Laura Ortberg Turner          @lkoturner               San Francisco, CA

Mary H.K.Choi                    @choitotheworld     Los Angeles, CA

Michael Tubbs                    @MichaelDTubbs    Stockton, CA

Scott Woods                       @scottwoodssays   Columbus, OH

Spike Friedman                   @SpikeFriedman     Seattle, WA

Susanna Williams                @SusannaDW         Brooklyn, NY

Tricia Matthew                    @triciamatthew        Brooklyn, NY

Tressie Mcmillan Cottom    @tressiemcphd        Atlanta, GA

Yusef Abdus-Salaam          @yusefsalaam         New York, NY

Zandria Robinson                @zfelice                   Memphis, TN"
  }
])

p_id = Project.find_by_name("#IRL: How I found real community in a virtual world").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 58})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 59})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 60})
end

User.create({ name: "The SqueeGees 'Veggie Soup'", email: "veggie@gmail.com", password: "123456"})

Project.create([
  { title: "The SqueeGees Release 'Veggie Soup'", user_id: User.find_by_name("The SqueeGees 'Veggie Soup'").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Music").id, subcategory_id: Category.find_by_name("Kids").id,goal: 8000,
    location_id: Location.find_or_create_by(name: "Los Angeles, CA").id, blurb: "A rockin' band for the entire family! The dance-inducing, healthy-eating, eco-friendly SqueeGees need your support!!",
    description: "The SqueeGees present their second LP, Veggie Soup! A collection of songs written under the influence of sheer happiness. The album features songs that introduce children to keeping the earth green, healthy eating, Spanish, musical instruments, dancing, and even a little cleaning up.
We have always been an artist-funded operation, however now we are asking our fans, family and friends to become a part of the creation, marketing and release of our new album.
The album will be released by our own Pierre de Reeder’s record label, Little Record Company, however the production, manufacturing, distribution, marketing, merchandising and publicity will cost upwards of 12k. We are asking for only a portion of that to help us get started
Every time you listen to our new record you will be reminded that it would not be in existence without you and your contribution small or large.
Educational Objectives
The SqueeGees are dedicated to the enrichment and education of children and their families. Our songs are written about topics such as the environment and conservation, healthy eating and exercise, music and movement, multiculturalism and social enrichment.
We love our fans!
One of the best parts of being in this business has been building relationships with our fans, parents and children both (teachers, librarians, grandparents, aunts and uncles too!)  Our Kickstarter campaign is a perfect opportunity to express how much you mean to us, and thank you for your support through the years.
Join our Kickstarter crew and you'll receive cool stuff like..."
  }
])

p_id = Project.find_by_name("The SqueeGees Release 'Veggie Soup'").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 61})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 62})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 63})
end

User.create({ name: "Jesse Freeman & Alani Cruz", email: "jesse&alani@gmail.com", password: "123456"})

Project.create([
  { title: "Jordan's and a Gold Chain", user_id: User.find_by_name("Jesse Freeman & Alani Cruz").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Photography").id, subcategory_id: Category.find_by_name("Fine Art").id,goal: 1523,
    location_id: Location.find_or_create_by(name: "Tokyo, Japan").id, blurb: "A zine and a series of photo exhibitions in Japan from film photos taken in the USA.",
    description: "Our project

This is a collaboration project between (myself) Jesse Freeman and Alani Cruz. We are both from the US (Baltimore and New York City respectively) and have lived in Japan for over 7 years.

We decided to call our project Jordan’s and a Gold Chain because growing up that was all one hoped for or really needed, and it is this humbling simplicity that we want to take for this project. The photos are shot on film in both color and black & white from the past year on visits back home. Both of us use Leicas and the little Ricoh Gr1s. The pictures themselves are a mix of our styles, mine being a bit more minimal and surrealistic while Alani’s are more humorous and humanistic that we edited together in what we hope is an interesting way.

Our Goal

We hope to raise enough money for a zine of our project in addition to three photo exhibitions we hope to have in Tokyo, Kanagawa, and Kyoto and all necessary darkroom materials to print and showcase."
  }
])

p_id = Project.find_by_name("Jordan's and a Gold Chain").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 64})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 65})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 66})
end

User.create({ name: "Llyn Hunter", email: "llyn@gmail.com", password: "123456"})

Project.create([
  { title: "Punnies", user_id: User.find_by_name("Llyn Hunter").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Publishing").id, subcategory_id: Category.find_by_name("Art Book").id,goal: 11000,
    location_id: Location.find_or_create_by(name: "Atascadero, CA").id, blurb: "A large format book of visual puns with poems, designed for all ages, to delight and entertain, created by Emmy winner Llyn Hunter.",
    description: "Short and sweet, this is a funding project to produce a book of visual puns.  I’m designing it in an 8.5” x 12” format to place on your coffee table, so that when friends come over waiting for the game to start or the pizza to arrive, they begin casually leafing through the book, and start to laugh. It’s fun for all ages, and I need your help to make it happen.
    Punnies all started with a Catfish.  When I work on storyboarding for animation, I regularly take a breather and create silly watercolor paintings (check out the rest of my stuff at http://www.llynsplace.com).  When I decided to do a cat as a fish chasing his dinner – Catfish – I just couldn’t stop.  I have been selling prints of these images at conventions for several years now along with my “Little Monster” books, but with my publishing in general, distribution has been a tough nut to crack.  Getting the books I wish to create into the hands of the people I know would love them has been very difficult when you are the illustrator, writer, designer, and publisher and salesman (not to mention, I work full-time creating cartoons, like Pinky and the Brain, Animaniacs, Aladdin, Kim Possible, Earthworm Jim, and Curious George) this can be a daunting task.  Help me create this book the way it needs to be done, while getting it to someone like you who will love it. And, if this Kickstarter works, I will be turned into a publishing fiend!  I have so many books I want to create, especially in the pun department.  Please get me started – I promise if we do this together I will not stop.

      Note I’m planning the delivery date for February (and I mean the begging of February) for next year – so you can give it to your honey as a low calorie Valentine Day present instead of that box of chocolates.
      My Project:  A full color book 48 – 64 (and beyond depending on you) page, 8.5“x12” hardcover book of visual puns.  The even pages will contain a full bleed illustration of the pun while the reverse will have the name of the pun (since you might not be able to figure it out) along with a silly poem to explain it.  The entire book is my creation: illustrations, writing and design, yours truly, Llyn Hunter.

      Who is it for? Everyone!  I create my books to be read and loved by kids and adults alike, while this book is especially great for those evil punsters who we all know and adore.

      What’s in it?  My highly detailed watercolor illustrations and well-written silly pomes.  Seriously, I write fun stuff.  I hate tripping over bad meter, so I don’t write it. I can promise you will enjoy the writing almost as much artwork.

      Why?  Because I love to make people smile.  It’s such a high to able to watch someone try to figure out a pun and then watch the “light bulb” go on with a laugh or a giggle when they figure it out.  I would like to be able to share that kind of joy with as many people as I can.  It’s just too much fun.

      What happens if we make the goal?  Here’s the cool part.  If I make the goal, and we go beyond I will add additional pages and additional puns. Some of those puns will come from those who donate, and those Ideas will become part of the book.It’s all up to you! More donations means more puns! And we all want that!"
  }
])

p_id = Project.find_by_name("Punnies").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 67})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 68})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 69})
end

User.create({ name: "Stephen H Lewis", email: "stephen@gmail.com", password: "123456"})

Project.create([
  { title: "Make!Sense: A Universal Interface For Learning", user_id: User.find_by_name("Stephen H Lewis").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Technology").id, subcategory_id: Category.find_by_name("Hardware").id,goal: 4250,
    location_id: Location.find_or_create_by(name: "Manhattan, NY").id, blurb: "Make!Sense is a system that lets you use almost any sensor with your laptop or smartphone for fun, interactive learning experiences.",
    description: "Introducing Make!Sense: a Universal Interface for Learning About the Physical World.
Make!Sense is an easy-to-use platform for making learning fun and interactive. It’s a universal interface system that allows you to quickly and easily connect different types of sensors to your computer or smartphone. You can use Make!Sense to observe movement, moisture, light, temperature, even your own heartbeat! If you’re curious about it, you can probably Make!Sense of it.

Here’s how it works: if you’re using the Make!Sense Mini, just plug it into the audio jack of any desktop, laptop, iPad, tablet, or smartphone. If you’re using the Make!Sense Max, you’ll attach it to a computer via USB. Then just connect a compatible sensor to the sensor port - there are sensors for monitoring almost anything, and we’ll be including some of the most useful ones in all of our reward bundles.
Once that’s hooked up, use that sensor to monitor whatever activity you are tracking, and use Sense!Suite - the Make!Sense software - to visualize and record the incoming data.  Or, for even more possibilities, you can write your own program in languages like Scratch or Processing.

I’ve been teaching for 15 years.  One of my daily challenges as an instructor is making learning fun and engaging, so that it’s memorable to my students.  I was searching for tools to help with this and found two options: expensive systems that worked well for a very specific purpose, like those from Vernier or Pasco, or open-ended systems like Arduino that require lots of technical knowledge to use, and don’t include any content or ideas.

I created Make!Sense to be the best of both worlds. It has many of the capabilities of expensive systems, while retaining the open-ended possibilities of the open-source solutions.  We’re also developing the hardware with a curriculum in mind - we want this to be a tool that’s easy for both students and teachers to use.  And best of all, it’s priced low enough that schools can invest in multiple units per classroom."
  }
])

p_id = Project.find_by_name("Make!Sense: A Universal Interface For Learning").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 70})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 71})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 72})
end

User.create({ name: "Cafe Nordo/Ripple Productions", email: "cafe@gmail.com", password: "123456"})

Project.create([
  { title: "Nordo's Culinarium: Where Food Meets Art", user_id: User.find_by_name("Cafe Nordo/Ripple Productions").id,
    end_date: DateTime.now + 30.days,
    category_id: Category.find_by_name("Theater").id, subcategory_id: Category.find_by_name("Spaces").id,goal: 35000,
    location_id: Location.find_or_create_by(name: "Seattle, WA").id, blurb: "A place where innovation, food, creativity and performance live year round in a historic building in Pioneer Square.",
    description: "Café Nordo is a nonprofit performing arts organization committed to new and innovative storytelling, that strives to push the boundaries of theatrical storytelling by integrating the culinary, performing, and visual arts.

    Nordo’s Culinarium will be the new permanent home of Café Nordo. There, immersive performances where food meets performing, literary, and visual arts will activate the historic landscape and contribute to revitalization efforts underway in Pioneer Square.

    With your help, Café Nordo will open Nordo's Culinarium this fall in Pioneer Square at the corner of Main & Nord Alley, former home to Elliott Bay Book Company. Nordo's Culinariaum will not only host Café Nordo's immersive theatrical experiences but also act as a crossroads between the culinary and performing arts. We'll throw in literary and visual arts and a complete disregard for temperance, creating an unparalleled arts venue in Seattle.

    If you are eager to visit the exciting new venue that Nordo's Culinarium is destined to become, please contribute to our Kickstarter campaign. Our goal here is to raise $35,000 towards building a beautiful new kitchen facility specifically tailored to Café Nordo's unique service and create a theatrical / dining venue that can be transformed into as many different worlds as we can conjure for you! Please take a gander at the myriad ways we have dreamed up to thank for your tax deductible gift.

    Café Nordo is currently undergoing a capital campaign to raise $250,000 to fund renovation of the 1890s-era Globe Building at the corner of Nord Alley and South Main Street into Nordo’s Culinarium. This requires the purchasing and installation of a light grid, lighting equipment, sound equipment, kitchen equipment, furniture, and a track system for curtains and wall flats. As of this moment, we’ve raised $138,000 of our $250,000 fundraising goal. Which includes 100% board participation, 4Culture Equipment Grant, 4Culture Unforeseen Opportunities, and individual gifts from our generous and committed supporters. While the Kickstarter campaign is targeted toward the renovation of the kitchen, if we surpass our fundraising goal the additional funding will go on to support other necessary expenses in the renovation process.

    To date, Café Nordo has operated on a project-by-project basis which requires moving loads of equipment from place to place and hurriedly installing a  theater and a restaurant for every show. The successful completion of this campaign will enable Café Nordo to spend more time on art, community, and educational outreach. We will no longer waste weeks securing new venues and building a new kitchen and theatre from scratch for every production. Instead, fulfillment of this campaign will provide secure storage for theatre and kitchen equipment, enable us to diversify programming reaching more people in the Seattle community, and provide Pioneer Square with community space and opportunities for artists and audiences to gather in cultural exchange.

    Where’s the money going?

    The Kickstarter campaign will provide the funding necessary to outfit our kitchen with stoves, refrigeration and other elements we need to provide our audiences with the imaginative food presentations they’ve come to love."
  }
])

p_id = Project.find_by_name("Nordo's Culinarium: Where Food Meets Art").id

Reward.create([
  { pledge: 0.50, description: "Every bit helps", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 119, description: "Receive a thank you postcard of the completed project and a place on our virtual dedication wall on our blog.", delivery_date: DateTime.new(2014, 1, 1),
    shipping_type: 1, project_id: p_id },
  { pledge: 225, description: "Get a sample of our project.", delivery_date: DateTime.new(2014, 10, 1),
    shipping_type: 1, project_id: p_id }
])

20.times do
  Pledge.create({ user_id: 1, reward_id: 73})
end

3.times do
  Pledge.create({ user_id: 2, reward_id: 74})
end

1.times do
  Pledge.create({ user_id: 3, reward_id: 75})
end









# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)