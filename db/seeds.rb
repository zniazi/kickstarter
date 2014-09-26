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
Campaign duration is 40 days, and, as usual, pledges exceeding the goal amount will be used for additional gallery printing and mad artistic exploration."}
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





















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)