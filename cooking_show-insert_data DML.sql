use cooking_show;

#insert data

insert into cuisine_by_country(country) values('Albanian'),('Algerian'),('American'),('Arab'),('Argentine'),('Armenian'),('Austrian'),('Azerbaijani'),
('Bahraini'),('Belarusian'),('Belgian'),('Bolivian'),('Bosnia and Herzegovina'),('Brazilian'),('British'),('Bulgarian'),('Canadian'),('Chinese'),('Colombian'),
('Croatian'),('Cypriot'),('Czech'),('Dutch'),('Egyptian'),('Emirati'),('Estonian'),('Finnish'),('French'),('Georgian'),('German'),('Greek'),('Hungarian'),
('Indian'),('Iranian'),('Iraqi'),('Irish'),('Israeli'),('Italian'),('Jamaican'),('Japanese'),('Jewish'),('Jordanian'),('Korean'),('Kuwaiti'),('Lebanese'),
('Lithuanian'),('Macedonian'),('Mexican'),('Moldovan'),('Montenegrin'),('Moroccan'),('Omani'),('Pakistani'),('Palestinian'),('Peruvian'),('Polish'),('Portuguese'),
('Romanian'),('Russian'),('Serbian'),('Slovak'),('Slovenian'),('Spanish'),('Sri Lankan'),('Swiss'),('Syrian'),('Tajik'),('Thai'),('Turkish'),('Ukrainian'),
('Yemeni');

insert into ingridient_group(name, description) values ('spices and essential oils',''),('coffee tea and their products',''),('preserved foods',''),
('sweeteners',''),('fats and oils',''),('milk eggs and their products',''),('meat and its products',''),('fish and their products',''),('cereals and their products',''),
('various foods of plant origin',''),('products with sweeteners',''),('various drinks','');

insert into meal_type(name) values ('breakfast'),('lunch'),('supper'),('dinner');

insert into etiquette(type_of_meal) values ('brunch'),('elevenses'),('tea'),('snack'),('drink'),('beverage'),('banquet'),('barbeque'),('buffet'),('haute cousine'),
('kids meal'),('salad'),('appetiser'),('entree'),('main course'),('side dish'),('dessert'),('soup'),('picnic'),('platter'),('tv dinner'),('value meal');

insert into thematic_section(name,description) values ('for students',''),('summer recipes',''),('budget meals',''),('fasting',''),('childrens',''), 
('party',''),('light meal',''),('quick dishes','');

insert into tip(description) values ('double it next time'),('use more buckwheat'),('add rice in after 15 minutes and use more water'),('delicious'),
('super yummy'),('very good'),('eh'),('extremely good'),('lukes favorite way to eat noodles. absorbs a lot of water, need to add more second day'),
('dont cook bacon too long'),('flip pretzel sticks half way through'),('best lentil soup'),('so good'),
('doesnt use the stove! sear chicken skin longer (+5 minutes)'),('makes a ton'),('bake at 180 for 25 min with lid and 15 min without baking'),
('too tomatoey, use less tomato, more cream'),('very yummy'),('dont fry too long'),('really yummy - takes a long time to cook'),('luke loves it'),
('burns in an enamel pot'),('can use enamel pot instead of skillet'),('dont forget to make naan dough ahead of time'),
('potatoes for 25 min then aspargus for 15'),('amazing flavor'),('ask luke for recipe link'),
('super healthy and yummy. combined two rexpies, use 1 c lentils, 3 sweet potatoes and add more celery and spinach. also use 1/4 tsp each paprika and cumin in 
dressing.'),('make some rice to go with it'),('Stick with brown or green lentils or adjust the cooking time. Red lentils cook in under half the cooking time of 
brown and green.'),('Don’t skip the lemon. Even though it’s a small amount it adds a nice hint of brightness.');

insert into time(preparing_time,cooking_time) values (20,5),(10,45),(15,20),(60,72),(10,60),(5,80),(5,10),(15,40),(10,50),(20,20),(30,45),(10,110),
(20,35),(10,45),(120,11),(20,36),(10,30),(20,40),(20,45),(10,15),(10,25),(70,40),(70,32),(5,60),(5,15),(10,20),(15,35),
(15,10),(10,65),(20,5),(30,20),(15,8),(10,10),(0,45),(20,25),(10,4),(0,16),(0,50),(0,85),(0,80),(5,5);

insert into ingridient(name,ingrigr_id,calories_per_100_grams) values ('chicken',7,186),('egg',6,143),('white rice',9,109),('canola oil',5,884),('bacon',7,468),
('mushroom',10,44),('green onion',10,19),('bean sprout',10,27),('peas',10,77),('soy sauce',10,60),('lentils',10,114),('olive oil',5,890),('red onion',10,44),
('garlic',10,44),('carrots',10,41),('celery',10,14),('crushed tomato',10,32),('vegetable stock',10,8),('chicken stock',10,6),('cumin',1,375),('coriander',1,23),
('paprika',1,289),('dried bay leaves',10,0),('lemon juice',10,22),('lemon zest',10,47),('salt',1,0),('pepper',1,0),('parsley',10,18),('bread',9,238),
('buckwheat groats',9,92),('cherry tomato',10,18),('mango',10,60),('mint',10,70),('hummus',1,177),('basmati rice',9,132),('vegetable broth',10,6.25),
('yellow onion',10,42),('harissa',1,67),('toasted pine nuts',10,633),('cooking spray',10,1000),('zucchini',10,15),('kale',10,50),('canned diced tomatoes',3,21),
('basil',10,23),('oregano',10,306),('thyme',10,101),('parmesan cheese',6,415),('chicken thigh',7,184),('potato',10,104),('garic powder',1,332),('kasha',9,320),
('beetroots',10,44),('leek',10,45),('dried rosemary',10,331),('hazelnut',10,628),('balsamic vinegar',1,300),('mustard',10,60),('dill',10,43),('ham',7,297),
('butter',6,740),('all purpose flour',9,366),('milk',6,61),('water',12,0),('tahini',9,640),('coconut oil',5,862),('beef',7,290),('red potato',10,72),
('vegan bouillon cubes',10,438),('nutritional yeast',10,400),('red wine vinegar',1,19),('honey',10,304),('brown sugar',10,380),('active dry yeast',10,0),
('baking soda',10,0),('cashews',10,574),('turmeric',10,354),('green lentils',10,314),('white wine vinegar',1,20),('bbq sauce',10,167),('lime juice',10,25),
('lime',10,30),('jalapeño',10,30),('ginger',10,80),('curry',1,325),('garam masala',1,500),('sweet potato',10,76),('yellow lentils',10,113),('plain vegan yogurt',6,94),
('rosemary',10,131),('chicken sausage',6,156),('apple',10,63),('maple syrup',4,260),('white sugar',10,385),('baking powder',10,53),('egg yolk',6,353),
('vanilla extract',1,288),('tomato sauce',10,37),('heavy whipping cream',6,300),('ground cayenne',1,0),('red pepper flakes',1,1562.5),('grated pecorino cheese',6,393),
('instant yeast',10,295),('whole wheat flour',9,339),('plain yogurt',6,63),('poppy seeds',10,533),('sour cream',6,214),('powdered sugar',10,389),
('baby carrots',10,41),('chicken leg',7,259),('ketchup',10,101),('buttermilk',6,67),('chocolate chips',10,500),('self raising flour',9,354),
('toasted cumin seeds',1,375),('chickpeas',10,161),('ground coriander',1,31.07),('raisins',10,299),('spinach',10,28),('canned coconut milk',10,192),
('red curry paste',1,100),('baby bok choy',10,12),('coconut milk',10,67),('fish sauce',5,35),('rice noodles',9,109),('asparagus tips',10,18),('quinoa',9,120),
('brussels sprouts',10,43),('dried cranberries',10,308),('almonds',10,500),('purple cabbage',10,31),('sugar snap peas',10,16),('salted peanuts',10,571),
('peanut butter',10,597),('sesame oil',5,884),('asparagus',10,20),('orzo pasta',9,339),('vegan parmesan cheese',10,400),('white miso',10,167),
('baby spinach',10,23),('white chia seeds',10,583),('black chia seeds',10,500),('skinless salmon fillets',8,177),('choy sum',10,13),('sunflower oil',5,884),
('oyster sauce',10,111),('tamari sauce',10,60),('chinese rice wine',12,138),('dried pinto beans',10,69),('tomatillos',10,32),('butternut squash',10,41),
('sriracha sauce',10,101),('naan',9,320),('chili powder',1,314),('tomato puree',10,38),('avocado',10,160),('shallot',10,72),('dry white wine',12,60),
('heavy cream',6,345),('marjoram',10,271),('whole wheat tortilla',9,263),('black beans',10,132),('colby jack cheese',6,384),('red enchilada sauce',10,127),
('red pepper',10,26),('feta cheese',6,265),('ground cinnamon',1,250),('tuna steak',5,82),('capers',10,23),('adobo sauce',10,226),('tortilla chips',9,488),
('Monterey Jack cheese',6,373),('spaghetti pasta',9,385),('canned sardines',3,208),('apple cider vinegar',10,0),('tomato paste',10,82),('pesto sauce',10,534),
('penne pasta',9,157),('soured milk',6,56),('green pepper',10,28.1),('cilantro leaves',10,23),('black olive',10,36),('almond milk',10,22.4),('ground ginger',1,333); 

insert into equipment(name,instructions) values ('skillet','skillets are commonly used to stir-fry or sauté.'),('slotted spoon','a spoon with slots 
which let liquid pass through while preserving the larger solids on top.'),('pot','traditionally used to make stock or broth.'),
('stick blender','a kitchen blade grinder used to blend ingredients or purée food.'),('grater','a kitchen utensil used to grate foods into fine pieces.'),
('fork','a utensil with which one can spear foods.'),('bowl','a typically round dish or container generally used for preparing, serving, storing, or consuming 
food.'),('saucepan','a saucepan is a cooking utensil with one handle and non-stick surface.'),('baking dish','an oven-safe rectangular dish made out of glass, 
stoneware or porcelain.'),('baking tray','a flat, rectangular metal pan placed in an oven.'),('parchment paper,','a cellulose-based paper that has been processed 
so as to obtain additional properties, such as non-stickiness, grease resistance, resistance to humidity and heat resistance, used in baking and cooking.'),
('plastic wrap','a thin plastic film typically used for sealing food items in containers to keep them fresh over a longer period of time.'),('high-speed blender',
'a kitchen appliance used to mix, crush, purée or emulsify food and other substances.'),('dutch oven','a thick-walled cooking pot with a tight-fitting lid.'),
('airtight container','a container that has tight lids, which firmly close around the container and prevent air from entering.'),('spoon','a utensil consisting of 
a shallow bowl, used to measure, mix, stir and toss ingredients and for serving food.'),('roasting pan','a piece of cookware used for roasting meat in an oven, 
either with or without vegetables or other ingredients.'),('spatula','a broad, flat, flexible blade used to mix, spread and lift foods.'),('rolling pin',' a 
cylindrical food preparation utensil used to shape and flatten dough.'),('biscuit cutter','a tool to cut out cookie/biscuit dough in a particular shape.'),
('knife','a tool or weapon with a cutting edge or blade  for preparing foods.'),('stand mixer','a kitchen device that uses a gear-driven mechanism to rotate a set 
of "beaters" in a bowl containing the food or liquids to be prepared by mixing them.'),('cookie scoop','any specialized spoon used to measure or to transfer an 
unspecified amount of a bulk dry foodstuff.'),('tongs','a type of tool used to grip and lift objects instead of holding them directly with hands.'),('whisk','a 
cooking utensil which can be used to blend ingredients smooth or to incorporate air into a mixture, in a process known as whisking or whipping.'),('pastry cutter',
' a device used to mix a hard (solid) fat into flour in order to make pastries.'),('rubber spatula','a flat rubber utensil used for mixing and spreading.'),
('foil','a very thin sheet of metal that can be readily bent or wrapped around objects and used for packaging of foods.'),('sieve','a tool used for separating 
wanted elements from unwanted material or for controlling the particle size distribution of a sample, using a screen such as a woven mesh or net or perforated 
sheet material.'),('colander','a kitchen utensil used to strain foods such as pasta or to rinse vegetables.'),('rice cooker','an automated kitchen appliance 
designed to boil or steam rice.'),('mortar and pestle','a set of two simple tools used to prepare ingredients or substances by crushing and grinding them into a 
fine paste or powder.'),('cutting board','a durable board on which to place material for cutting.');

insert into step(description) values ('In a large skillet, heat oil over medium-high heat. Pour egg into the pan. As egg sets, lift edges, letting uncooked 
portion flow underneath. When egg is completely cooked, remove to a plate. Set aside.'),('In the same skillet, cook bacon over medium heat until crisp. Using a 
slotted spoon, remove to paper towels; drain, reserving 2 tablespoons drippings. Saute mushrooms and onions in the drippings. Stir in the rice, bean sprouts, 
peas, soy sauce and bacon. Chop egg into small pieces; stir into the pan and heat through.'),('Heat oil in a large pot over medium heat. Add garlic and onion, 
cook for 2 minutes'),('Add celery and carrot. Cook for 7 - 10 minutes or until softened and the onion is sweet. Dont rush this step, it is key to the flavour 
base of the soup.'),('Add all remaining ingredients except the lemon and salt. Stir.'),('Increase heat and bring to simmer. Scoop scum on the surface off and 
discard (do this again during cooking if required). Place lid on and turn heat down to medium low. Simmer for 35 - 40 minutes or until lentils are soft.'),
('Remove bay leaves.'),('Thicken Soup: Using a stick blender, do 2 or 3 quick whizzes to thicken the soup (see video below). Or transfer 2 cups to a blender, 
let it cool slightly, then hold lid with tea towel and blend then transfer back into pot.'),('Add a touch of water if you want to adjust soup consistency. Season 
to taste with salt and pepper. Grate over the zest of the lemon then add a squeeze of lemon juice just before serving. Garnish with parsley if desired and serve 
with warm crusty bread slathered liberally with butter!'),('Bring 2 cups of water to a boil on medium heat. Add in the buckwheat and cook for 10 minutes with the 
lid off, until most of the water is absorbed then turn the heat down to low with the lid on for a few more minutes until all the water is gone and the buckwheat 
is soft. Fluff the buckwheat up with a fork and set to cool while you prepare everything else.'),('Add the remaining ingredients to a large bowl, transfer the 
buckwheat to the bowl and toss well until all ingredients are combined.'),('Optional: Mix in hummus before serving.'),('Bring the broth to a boil in a large 
saucepan over medium-high heat. Add the rice, lentils, and a big pinch of salt, and return to a boil. Cover and reduce the heat to a simmer. Cook until the rice 
and lentils are tender, about 40 minutes, adding more liquid a little at a time if all of it is absorbed before the rice and lentils are cooked. Meanwhile, cook 
the onions.'),('Heat 2 tablespoons of the oil in a large skillet over medium heat until shimmering. Add the onions and cook until deeply browned and beginning to 
caramelize, about 20 minutes (add small amounts of water as needed to prevent the onions from burning; you can also continue cooking the onions for as long as the 
rice and lentils cook for a deeper caramelization). Add the garlic and cook for 2 minutes more.'),('When the rice and lentils are ready, remove from the heat and 
let sit covered for 10 minutes. Add 1/2 of the onion mixture, cumin, chopped parsley, and remaining 1 tablespoon of olive oil and gently fold to incorporate. 
Reserve the remaining onions for serving.'),('Wipe the skillet used to cook the onions clean, lightly grease with cooking spray, and return to medium heat until 
the pan is hot. Crack the eggs into the pan and cook to your desired doneness. Season the eggs with salt, pepper, and a dash of paprika.'),('Divide the rice and 
lentil mixture equally between 4 bowls. Place a fried egg on each bowl. Garnish with the remaining caramelized onions, harissa, and toasted pine nuts.'),
('Heat olive oil in a large pot over medium-high heat.'),('Add carrots and onions and saute 2 minutes then add garlic and saute 2 minutes longer.'),
('Pour in vegetable broth and tomatoes. Add in lentils, basil, oregano, thyme and season with salt and pepper to taste.'),('Bring to a boil then reduce heat to
medium-low, cover and simmer 35 minutes, stirring occasionally.'),('Add in zucchini and kale and simmer 10 minutes longer.'),('Stir in lemon juice and add up to 
1 cup of water to thin as needed (as the soup rests the lentils soak up more of the broth).'),('Serve warm with parmesan cheese if desired.'),
('Preheat oven to 375°F. Line a rimmed 12in x 18in baking sheet with foil or even better, parchment paper.'),('Thoroughly wash the potatoes & carrots with a 
scrubber and cut them in smaller pieces. Pat dry with a paper towel.'),('Pat dry chicken with a paper towel.'),('Add chicken, potatoes and carrots, onion & garlic
to the lined rimmed baking dish and sprinkle with 1 Tbsp salt, 1 tsp ground pepper, and 4 tsp garlic. Drizzle with 3-4 tbsp olive oil. Carefully toss everything 
to coat.'),('Place in the oven and bake chicken and potatoes for 1 hour 20 minutes. Check for doneness -if the potatoes and chicken thighs are soft and easily 
pierced with the fork they are ready.'),('If the chicken and potatoes have not browned up as much as you would like, turn the broil setting on and broil for 5 
minutes. Watch carefully, or they will burn.'),('Remove from the oven and serve right away in the baking pan or transfer to a warm serving plate.'),('In a medium 
bow, mix together all the sauce ingredients.'),('Heat the oil in a skillet over medium heat, then add the onion and sauté for a few minutes until the onion 
softens and begins to brown. Now add the lentils and the sauce. Cover and bring to a gentle simmer until the lentils are cooked and tender, and most of the liquid
is absorbed, about 8 to 10 minutes.'),('Serve by spooning over rice, and garnishing with the green onions and sesame seeds.'),('Heat up the oven to 200° C / 395° 
F. Peel beetroots and chop them into a large dice.'),('In a pestle and mortar, make rosemary salt by pounding dry rosemary and sea salt until you get a fine 
powder.'),('Place beetroot chunks in a bowl. Coat in 1 tablespoon of olive oil and 1 tablespoon of balsamic vinegar and season with rosemarysalt and pepper. Bake 
for about 40 minutes, until tender.'),('Carefully check buckwheat for small stones and debris (I advise against rinsing it though as it becomes mushy). Put 
buckwheat into a small pot with a glass lid and add 3 cups / 720 ml of water, cover with a lid and bring to the boil. Do not salt it until it’s been cooked as 
salt negatively affects buckwheat’s texture. Once the water comes to the boil, turn the heat down to low and cook on a low heat until all the water has been 
absorbed (to check, tip the pot to see if water is coming out from underneath the buckwheat, but DO NOT LIFT THE LID). Once the water has been fully absorbed, 
rest the pot for another 10 minutes (with the lid firmly on) so that the buckwheat finishes cooking in its own steam.'),('Heat up the remaining two tablespoons of
olive oil in a pan. Add sliced leeks and fry, on a low heat, until almost soft. Add diced garlic and fry until translucent and fragrant. Add sliced mushrooms and 
fry until cooked. Season with salt and pepper and a tablespoon of balsamic vinegar. Allow it to cook out. Add spinach and allow it to wilt into the salad. Finally
add cooked buckwheat. Mix well and adjust the seasoning.'),('Divide between bowls, top with roasted beetroot chunks, hazelnuts and some fresh parsley.'),
('Preheat the oven to 200°C (400°F) and line a baking tray with parchment paper. Scrub the potatoes and cut any larger ones so that they are all roughly the 
same size (about the size of a golf ball).'),('Add the potatoes, olive oil, and salt to the prepared tray and use your hands to mix until the potatoes are well 
coated. Roast for 40-50 minutes, or until very golden.'),('To make the dressing, add the olive oil, dill, chives, vinegar, mustard, maple syrup, salt, and pepper 
to a jar or small bowl and mix to fully combine. It should be a light golden colour and not separated.'),('To assemble the salad, place the spinach and lentils 
into a large bowl. Top with the potatoes immediately after coming out of the oven.'),('Pour the dressing over the salad and mix until the potatoes are fully coated
with dressing and the spinach is wilted. Serve immediately.'),('Gather all ingredients.'),('Combine potatoes, water, ham, celery, and onion in a stockpot. Bring to 
a boil; simmer over medium heat until potatoes are tender, 10 to 15 minutes. Stir in chicken bouillon, pepper, and salt.'),('Melt butter in a separate saucepan 
over medium-low heat. Add flour; cook and stir until thick, about 1 minute. Whisk in milk; cook and stir until thick, 4 to 5 minutes.'),('Pour milk mixture into 
the stockpot; cook and stir until warmed through.'),('Serve and enjoy.'),('Place the meat into a large soup pot filled with water. Bring to a boil and then turn 
the heat down to medium. Add the bay leaves and let the meat cook for at least 40 minutes. Season with salt. Add the buckwheat and cook for an additional 15 
minutes.'),('Clean and dice the potatoes. Add them to the soup.'),('Dice the onions, herbs, and carrots into small cubes.'),('In a skillet preheated with oil over 
medium heat, sauté the carrots and onions until golden brown. Add to the soup and simmer for 5 minutes.'),('Add the chopped herbs to the soup. Enjoy!'),('Set a 
large heavy-bottomed stock pot or dutch oven over medium/high heat and add 1/3 cup olive oil and 4 Tbsp butter. Add onion and sauté, stirring occasionally until 
softened (about 5 min).'),('Add cubed beef and sauté 5 min, turning once (beef will not be fully cooked). Add julienned carrots and stir another minute.'),('Add 4 
1/4 cups cold water and season with 1 tsp cumin, 2 tsp salt and 1/4 tsp pepper or to taste. Bring to a boil then reduce heat to a low simmer, cover and cook 1 
hour.'),('Meanwhile (about 10 min before your timer is up), heat a large non-stick skillet over medium/high heat and melt in 4 Tbsp butter. Add 2 1/2 cups 
buckwheat and toast until golden, stirring often (3-5 min). Pour buckwheat into the pot in an even layer and gently pour enough hot water to cover buckwheat 1/2" 
above the level of the buckwheat (I added 1 cup hot water).'),('Cut garlic head in half parallel to the base to expose cloves and place over the top of buckwheat, 
cut-sides-down, pushing into the buckwheat slightly. Cook uncovered over med heat until most of the surface liquid boils out (10 min).'),('Poke 8-10 holes through 
the buckwheat to allow steam to escape to the surface, then cover with lid, reduce heat to the lowest setting and let pot sit another 30 minutes. Remove garlic and
stir everything gently to combine. P.S. you can squeeze garlic cloves out of their skins and serve them in the pilaf if you wish.'),('Prepare all of your veggies, 
spices and set aside.'),('Add only 6 cups of the water (or broth if using the updated version below) to a large pot and bring to a boil, add the bouillon cubes (or 
all the additional spices listed under the updated version below in place using the bouillon cubes), thyme, salt, nutritional yeast and whisk to dissolve.'),
('Immediately add all of the veggies (carrots, celery, onion, garlic and potatoes). You are adding all of the ingredients except the pasta. Stir well and bring 
back to a boil. Once boiling, immediately turn to the lowest heat, cover and simmer around 10 minutes until the carrots and potatoes are becoming tender, but not 
fully.'),('Add the pasta and bring back to a simmer over medium-high heat. Once simmering, leave the lid off and cook for about 10 minutes, or until the pasta is 
tender, but still firm. If using gluten-free pasta, it will cook much faster, so keep an eye.'),('Taste and add any more salt, if needed, as this can greatly vary 
depending on the broth or quality of bouillon cubes used. I like a good grind of freshly ground black pepper to serve on top. If you want it more brothy, add more 
broth and adjust seasonings as needed to account for extra broth.'),('Garnish with freshly chopped parsley and a fresh squeeze of lemon juice right before 
serving.'),('Preheat oven to 375 degrees. Lay bacon on a baking sheet and bake for 7 minutes. Flip and bake for another 7 minutes or until crispy. Move bacon to 
paper towels.'),('Using the same baking sheet with bacon grease on it. Lay potatoes cut side down. Bake for 15 minutes. Flip and bake for another 15 minutes.'),
('In a mixing bowl, combine the vinegar, Dijon mustard, honey, garlic, salt, and black pepper. Whisk in olive oil slowly to combine. Coarsely chop the bacon. 
Gently toss in the potatoes with bacon, dressing, and parsley.'),('In a large bowl of stand mixer, combine the brown sugar and 2 cups of warm water until 
dissolved. Sprinkle the yeast over the water and let stand until foamy, about 5 minutes. Stir in the vegetable oil and 3 cups of the flour. Knead in the remaining 
2¾ cups of flour; the dough will be slightly sticky. Knead until smooth and silky, about 3 minutes. If the dough is very sticky, knead in up to ¼ cup more 
flour.'),('Transfer the dough to a large, greased bowl, cover with plastic wrap and let stand at room temperature until doubled, about 45 minutes.'),
('Preheat the oven to 450°. Line 3 large baking sheets with parchment paper and butter the paper. Punch down the dough and turn it out onto a floured surface. 
Knead the dough lightly, flatten it out and cut it into 24 equal pieces. Roll each piece into a 7-8 inch stick about ½ inch thick. Transfer the sticks to the 
prepared baking sheets, leaving at least 2 inches between them. Let stand uncovered until puffed, about 25 minutes.'),('Heat up 1 cup of hot water on burner. Keep 
hot until needed. (Or heat in microwave.)'),('In a large, deep skillet, stir the baking soda into 2 quarts of water and bring to a simmer over high heat. Reduce 
the heat to medium. Using 2 slotted spoons, carefully transfer 6 pretzel sticks at a time to the simmering water for a total of 30 seconds. Turning once after 15 
seconds. Add about 1 cup of hot water before cooking the second batch of pretzels. Transfer the pretzel sticks to paper towels to drain, then return them to the 
baking sheets, spacing them evenly. Add another cup of hot water before the second batch.'),('Brush the pretzel sticks with the egg wash and sprinkle with salt. 
Bake until deeply browned, about 10 minutes. Serve warm or at room temperature'),('Put the cashews in a bowl and cover with a couple of inches of water. Soak for 
1 to 2 hours or overnight. (For a quick-soak method, cover with boiling water and soak for 30 to 60 minutes.) Drain and rinse.'),('Transfer the cashews to a 
high-speed blender along with ½ cup (125 mL) of the water. Blend on high until super smooth and creamy in texture. Set the cashew cream aside.'),('In a large Dutch 
oven, heat the oil (or use broth for oil free) over medium heat. Stir in the onion, garlic, and a couple pinches of salt, and sauté until the onion is softened, 4 
to 6 minutes.'),('Stir in the carrots and celery, and cook for another few minutes or so. Stir in the cumin, thyme, and turmeric until combined.'),('Add the diced 
tomatoes with their juices, lentils, broth, and remaining water. Increase the heat to high and bring to a low boil. Reduce the heat to medium and simmer, 
uncovered, for 30 to 35 minutes, until the lentils are tender.'),('Stir in the cashew cream and chard. Add salt, pepper, and vinegar to taste. (The vinegar’s role 
is to add a little bit of brightness to the soup; add a bit at a time and keep tasting, as it can quickly overwhelm.)'),('Cook for a couple of minutes over 
low-medium heat, until the chard is wilted, and then serve.'),('This stew will keep in an airtight container in the fridge for up to 5 days, or you can freeze it 
for 1 to 2 months (always let it cool completely before storing). The stew will thicken after sitting in the fridge; you can thin it out with a bit of broth when 
you reheat it, if desired, or simply serve it thick with some crusty bread.'),('Preheat oven to 425F (220C).'),('Heat the oil in a large frying pan or skillet over 
medium-high heat. Add in the onion, carrots, mushrooms, garlic, and thyme and sauté for 6 to 8 minutes until softened and bits are browned. Remove from pan, and 
set aside.'), ('Return the pan to heat, add in the lentils, and vegetable broth. Cover, and simmer for 25 - 30 minutes until the broth is absorbed and the lentils 
are tender. While the lentils cook, prepare the mashed potatoes according to the directions.'),('Add the vegetables back to the pan with the lentils, and add the 
peas, BBQ sauce, and soy sauce. Heat through. Scoop the mixture into a casserole dish or large skillet and then spread the mashed potatoes on top.'),('Bake for 10 
- 15 minutes until the pie is hot and bubbling around the edges.'),('In a small bowl combine lime juice, honey, soy sauce.'),('Salt the chicken thighs with ½ 
teaspoon of salt (or more) thoroughly, all over, including under the skin.'),('In 12-inch skillet, heat olive oil over medium-high heat. Add chicken thighs, skin 
side down, and cook for about 5 minutes until the chicken skin side gets nicely browned (make sure to get really nice brown, not just pale brown - it makes a 
difference in presentation).'),('Turn chicken, so that skins sides are up and add lime-honey mixture to the skillet. Reduce heat to low; cover and cook 14 to 18 
minutes longer or until done (chicken should register 180 degrees F on instant thermometer). While cooking, covered, chicken thighs will release their own juices, 
as well.'),('Transfer chicken to plates. Drizzle chicken with pan juices. Top with chopped green onions and serve with lime slices.'),('Place the onion in a large,
shallow saucepan, and sauté over medium heat until translucent (about 3 to 4 minutes), adding water 1 to 2 tablespoons at a time to keep the vegetables from 
sticking. Add the garlic and continue to sauté for about 1 minute. Add the jalapeño and sauté for about 2 minutes. Add the ginger, curry powder, garam masala, and 
turmeric (if using). Stir to fully combine and cook for about 2 minutes more, adding water as necessary.'),('Add the broth, sweet potatoes, and lentils. Stir to 
combine. Cover and bring to a boil, then reduce the heat and cover again, this time leaving the lid open a crack. Simmer for about 20 minutes.'),('When the lentils 
are tender and the liquid has decreased, add the yogurt, lime juice, and chard, and cook until the chard is just starting to wilt. Add the salt and the pepper to 
taste, stir to combine, and remove from the heat. Serve warm.'),('Combine flour, yeast, salt and rosemary in a large bowl. Stir in the warm water and stir until 
combined using a spoon or spatula. It is okay if the mixture looks a little shaggy. Cover with a towel or plastic wrap and let dough sit on the counter overnight, 
or for at least 12 hours.'),('When ready to make the bread, place a dutch oven in the oven at 450 degrees for 30 minutes. While dutch oven is heating up, transfer 
dough to a floured surface, it will be bubbly and sticky. Add a little flour and gently fold and tuck it into a round ball (it will still be a pretty loose dough). 
Using oven mitts, carefully take hot pot out of the oven, add a teaspoon of olive oil to the dutch oven and drop the ball of dough into the hot pot. Cover with the 
lid and place back into the oven to bake for 30 minutes. Remove lid and let it bake another 10-15 minutes or until brown.'),('Preheat oven to 450°F.'),('Toss 
potatoes, oil, salt and pepper in a large bowl until coated. Spread out in a large heavy roasting pan. Roast 10 minutes. While potatoes roast, stir sausage, 
apples, mustard, maple syrup and vinegar together in the bowl.'),('Reduce oven temperature to 375°F. Remove roasting pan from the oven. Scrape potatoes up from the 
pan with a spatula. Add sausage, apples and the mustard mixture to the potatoes and toss to combine. Return to the oven and bake, stirring once or twice until the 
potatoes and apples are tender and the glaze is caramelized, 45 to 50 minutes.'),('Preheat your oven to 425°F with a rack in the upper portion. Get out a baking 
sheet; there is no need to grease it. Line it with parchment if you like, for easiest cleanup.'),('Weigh your flour; or measure it by gently spooning it into a 
cup, then sweeping off any excess.'),('Mix together the flour, salt, baking powder, and sugar.'),('Work the butter into the flour mixture using your fingers, a 
fork or pastry blender, a stand mixer, or a food processor; your goal is an evenly crumbly mixture (think breadcrumbs).'),('Drizzle the smaller amount of 
buttermilk evenly over the flour mixture. Mix quickly and gently for about 15 seconds, until you have made a cohesive dough. If the mixture seems dry and will not 
come together, do not keep working it; drizzle in enough milk — up to an additional 2 tablespoons (28g) to make it cohesive.'),('Place the dough on a lightly 
floured work surface. Pat it into a rough rectangle about 3/4" thick. Fold it into thirds like a letter and roll gently with a floured rolling pin until the dough 
is 3/4" thick again.'),('Cut the dough into circles with a biscuit cutter for traditional round biscuits; a 2 3/8" cutter makes nice-sized biscuits. Or to avoid 
leftover dough scraps, cut the dough into squares or diamonds with a bench knife or sharp knife.'),('Place the biscuits bottom side up on your prepared baking 
sheet; turning them over like this yields biscuits with nice, smooth tops. Brush the biscuits with milk, to enhance browning.'),('Bake the biscuits for 15 to 20 
minutes, until they are lightly browned. Remove them from the oven, and serve warm.'),('Store any leftover buttermilk biscuits, well wrapped, at room temperature 
for several days. Freeze for longer storage. Biscuits are always best when they are rewarmed before serving.'),('Preheat oven to 350°F. Line two large baking 
sheets with parchment paper or silicone baking mats. Set aside.'),('Whisk together the flour, baking soda, and baking powder in a medium size bowl. Set aside.'),
('In a large bowl, using an electric or stand mixer, cream together the butter, and granulated sugar until combined.'),('Add egg yolks and vanilla extract.'),
('Add flour mixture and mix until just combined. DO NOT OVERMIX!'),('Using a cookie scoop or ice cream scoop, scoop dough into balls about 2 Tablespoons each, 
roll in sugar and place onto prepared baking sheet.'),('Bake for 10-15 minutes or until tops of cookies start to crack. Let cool for 5 minutes on baking sheet 
before moving them to a wire rack. Let cool completely on wire rack.'),('Sauté Potatoes: Heat oil in 3-quart or larger pan. Add fingerling potatoes, sautéing until 
crisping around edges, about 10 minutes, stirring occasionally.'),('Simmer: Add garlic to pan with potatoes and cook until garlic browns, about 1 minute. Stir in 
all remaining sauce ingredients. Bring to simmer. Cover and adjust heat to medium-low. Cook until potatoes are tender, about 15 minutes.'),('Serve: Uncover pan and 
stir. Serve hot.'),('Heat oil in a Dutch oven or large heavy skillet over medium heat. Add guanciale and sauté until crisp and golden, about 4 minutes. Add pepper 
flakes and black pepper; stir for 10 seconds. Add onion and garlic; cook, stirring often, until soft, about 8 minutes. Add tomatoes, reduce heat to low, and cook, 
stirring occasionally, until sauce thickens, 15-20 minutes.'),('Meanwhile, bring a large pot of water to a boil. Season with salt; add the pasta and cook, stirring 
occasionally, until 2 minutes before al dente. Drain, reserving 1 cup of pasta cooking water.'),('Add drained pasta to sauce in skillet and toss vigorously with 
tongs to coat. Add 1/2 cup of the reserved pasta water and cook until sauce coats pasta and pasta is al dente, about 2 minutes. (Add a little pasta water if sauce 
is too dry.) Stir in cheese and transfer pasta to warmed bowls.'),('In the bowl of a stand mixer whisk together 1 1/2 cups warm milk, 6 Tbsp. melted butter, and 
1/4 cup white sugar. Next sprinkle in in 2 1/4 tsp. active dry yeast, whisk it in and let it rise for 10 minutes until foamy.'),('Once the yeast has risen add in 5 
cups all-purpose flour and 1 tsp. salt. Turn the machine to low, until the dough comes together. Add in 2 large eggs and increase the mixer to medium for about 
8-10 minutes. If the dough is too sticky, add in 2 Tbsp. of flour. The dough should be elastic and slightly sticky.'),('Place the dough into a large bowl, cover 
with saran wrap, and let it rise for 1 hour at room temp. until doubled in size.'),('Once risen, stretch the dough out a bit, and start kneading in 1 cup 
semi-sweet chocolate chips.'),('Divide the dough into 10 even balls (each 5.6 oz.) and shape them each into smooth round balls. Place the rolls onto a lined baking 
sheet with parchment paper (make sure to space them out since they do expand quite a bit in the oven). Add on some extra chocolate chips for a pretty 
presentation.'), ('Cover and let the rolls rise for 15 minutes. Then brush with egg wash (whisk together 1 egg), and bake at 350 degrees for 18-20 minutes or until 
the tops are golden brown.'),('Let them cool a couple minutes before serving, and enjoy!'),('Combine yeast, sugar, and lukewarm water and let sit for 5 to 10 
minutes, or until foamy. In the meantime, combine flours, baking powder, and baking soda in a bowl. Make a well in the center.'),('Stir milk and yogurt together. 
Once the yeast mixture is foamy, stir it into the yogurt and milk. Pour into the well of the dry ingredients.'),('Stir with a wooden spoon to combine, then knead 
dough until smooth. Place dough in a well-oiled bowl, cover with a tea towel or plastic wrap, and let rise for about an hour, or until doubled in size.'),('When 
dough is ready, punch down and turn out on a well-floured surface. Divide in half, then divide each half into eight pieces of equal size. Roll each piece out into 
a thin oval approximately 6 inches long and 1/8 inch thick. Heat a cast iron skill over medium-high heat on the stove top.'),('Once pan is hot, brush each side of 
the naan with melted butter/ghee. (If adding toppings like onion/garlic/spice, add them to the second side you brush with butter and gently press them into the 
dough.)'),('Place dough into your skillet. (If you’ve adding toppings, place it topping side-up.) Let cook for around 1 minute, or until dough puffs and bubbles 
form on top. Flip and let cook for another minute. Repeat with remaining pieces of dough.'),('Place a rack into the center of the oven and preheat to 400 degrees 
F.'),('Prepare a baking sheet by lining it with parchment.'),('In a large mixing bowl, whisk together the flour, sugar, poppy seeds, baking powder, salt, and 
lemon zest.'),('Cut butter into smaller pieces and with a pastry cutter, cut butter into the flour mixture until it resembles coarse meal.'),('In a small mixing 
bowl, whisk together the egg and soured milk.'),('Pour the mixture into the dry ingredients and stir until it just comes together. Then using a rubber spatula, 
knead and fold it together about 8 to 10 times.'),('Prepare a flat surface by dusting it with flour, and turn the dough out onto it.'),('Divide the dough in half 
and pat each into a circle approximately 5 inches in diameter. Cut the dough into 6 wedges and transfer the entire disk of dough to the prepared baking sheet. 
Cutting it before baking allows for easy separation, but keeping the wedges together during baking allowed for the scones to be bit more moist than is typical.'),
('Bake for 20 to 25 minutes or until tops are lightly golden and firm. Transfer to a wire rack and allow to cool for 10 minutes while you prepare the glaze.'),
('In a medium microwavable bowl, whisk together the confectioners’ sugar, lemon juice and butter.'),('Place bowl into the microwave and set on high for 45 
seconds.'),('Whisk again to mix well, removing any lumps and allow to sit for a few minutes to cool.'),('Drizzle over scones and serve.'),('Preheat oven to 400° 
F.'),('In a large bowl, whisk together the oil, balsamic, honey, dijon and salt. Toss with the chopped vegetables and arrange on a baking sheet.'),('Bake at 400° F 
for 40-50 minutes. Serve immediately.'),('Preheat the oven to 350 degrees F. Lay the chicken legs out in a foil-lined baking dish with high sides (the foil is to 
make clean up easier — it’s not essential but helps a whole lot). A high-sided sheet pan is the best option because it has sides to keep everything in, but it is 
big enough that the chicken isn’t drowning in the sauce. It will caramelize best if half of the chicken is poking out of the sauce while cooking.'),('In a glass 
measuring cup, measure out the honey, soy sauce, and ketchup. Add the minced garlic, and stir. If the mixture doesn’t combine well, microwave it on high for 30 
seconds and stir again. Pour the honey mixture over the chicken legs.'),('Put the chicken legs in the oven and bake for 45 minutes. Take the chicken out of the 
oven, and rotate it so that the bottom that was in the sauce is now on top, out of the sauce.'),('Put the legs back in the oven. Raise the heat to 425 degrees F., 
and bake until the sauce is bubbly and starts to caramelize on the chicken legs. This should take about 15 minutes.'),('Remove the chicken from the oven, and allow 
to rest for 5 minutes before serving. Serve the sauce the the chicken cooked in with the meal or over rice if you’d like.'),('Heat a large deep fry pan or a stock 
pot with a medium heat and add in 2 tbsp extra virgin olive oil'),('After 2 minutes add in 1/2 onion finely diced, 1/2 green & 1/2 red bell pepper finely chopped 
and 4 cloves garlic roughly minced, mix with the olive oil'),('Once all the vegetables are lightly sauteed, about 5 minutes, add in 1 tsp sweet smoked paprika, 
quickly mix together, then add in 1/2 cup tomato sauce, raise the heat to a medium-high and simmer'),('Meanwhile, measure out 1 cup of uncooked brown lentils, add 
them into a sieve and rinse under cold running water, removing any debris if found'),('After simmering the tomato sauce for 3 minutes and it has really thickend 
up, add in the rinsed lentils, 2 small potatoes that have been cut into small 1/2 inch (1.25 cm) pieces, 1 carrot that´s been thinly sliced and season with black 
pepper, mix together, then add in 5 cups vegetable broth and 1 bay leaf, mix together and bring to a boil, then place a lid on the pan and lower the heat to a low 
heat, simmer for 30 to 35 minutes or until the lentils are fully cooked through, then remove the lid, season with sea salt and simmer for 1 to 2 more minutes'),
('Transfer the lentil stew into shallow bowls and sprinkle with finely chopped parsley, enjoy!'),('Preheat oven to 375° F. Grease an ovenproof 10” skillet with 
cooking spray and line the bottom with parchment paper.'),('In a medium bowl, whisk together flour, ¼ cup sugar, baking soda and salt. Using a pastry cutter, or 
your hands, work in the butter until it’s evenly incorporated.'),('In a separate medium bowl, combine buttermilk and egg. Add to the dry ingredients and stir until
just combined. Do not over mix! Fold in chocolate chips, raisins, or currents, if using.'),('Place dough in skillet and score an “X” on top with a sharp knife. 
Brush with melted butter and sprinkle with remaining sugar, if using. Bake until golden, or until a toothpick comes out clean, 45 to 55 minutes. When you tap the 
loaf, it should sound hollow. Cool at least 10 minutes before slicing and serving.'),('COMBINE yogurt, 2 cloves of the garlic, the cumin, paprika, 2 teaspoon of 
the olive oil, and salt and pepper in a bowl and mix well. Set aside.'),('SAUTE chickpeas and remaining 2 cloves of garlic in remaining 1 tablespoon olive oil 
over medium heat until fragrant and warmed through, 3 to 4 minutes.'),('SPOON a quarter of the yogurt mixture into one of the sweet potatoes. Top with a quarter 
of the chickpeas and 1 tablespoon of the pine nuts. Repeat with remaining sweet potatoes. Top with the dill. Serve warm.'),('SAUTE onion in olive oil over medium 
heat until translucent, 5 minutes. Add the cumin, coriander, paprika, and garlic and cook until fragrant, 1 minute. Add the chickpeas, raisins, and spinach and 
cook until the spinach is wilted, 2 to 3 minutes.'),('ADD the crushed tomatoes and the water, along with salt and pepper to taste. Allow mixture to simmer for 5 
to 7 minutes, or until the tomato mixture has thickened slightly. Serve warm.'),('In a large pot, heat some oil and sauté the onion for 3 minutes until it becomes 
translucent. Then add the garlic and cook for another minute.'),('Add the uncoooked spaghetti, the vegetable broth, the coconut milk, and the lemon juice. Stir a 
couple of times and gently push the spaghetti in the liquid when they are soft enough (this might take a couple of minutes. Try not to break them when they are 
still too hard). Cook for 15-18 minutes.'),('When the spaghetti are al dente, stir in the spinach and the lemon zest. Cook for 2 more minutes and season with salt, 
pepper, and red pepper flakes. Enjoy!'),('Prepare the vegetables for the soup and garnishes first, so they’re ready to go when needed. Mince the garlic and grate 
the ginger using a small-holed cheese grater. Peel and dice the sweet potato into one-inch cubes. Wash the bok choy well, then chop into one-inch strips, 
separating the fibrous stalks from the delicate green ends. Thinly slice the red onion and roughly chop the cilantro.'),('Add the cooking oil to a large soup pot 
along with the minced garlic, grated ginger, and Thai red curry paste. Sauté the garlic, ginger, and curry paste over medium heat for 1-2 minutes.'),('Add the 
diced sweet potato and chopped bok choy stalks to the pot (save the leafy green ends for later) along with the chicken or vegetable broth. Bring the pot to a boil 
over medium-high heat, then reduce the heat to low and let simmer for 5-7 minutes, or until the sweet potatoes are tender.'),('While the soup is simmering, bring 
a small pot of water to a boil for the vermicelli. Once boiling, add the vermicelli and boil for 2-3 minutes, or just until tender. Drain the rice noodles in a 
colander and set aside.'),('Once the sweet potatoes are tender, add the coconut milk, fish sauce, and brown sugar to the soup. Stir, taste, and adjust the fish 
sauce or brown sugar if needed. Finally, add the bok choy greens and let them wilt in the hot soup.'),('To serve, divide the rice vermicelli among four bowls. 
Ladle the soup and vegetables over the noodles, then top with red onion, cilantro, a wedge or two of lime, and a drizzle of sriracha.'),('Preheat oven to 200C / 
390F.'),('In a large roasting tin, add the olive oil, balsamic vinegar and salt. Add the potatoes and toss to coat fully before roasting for 20 minutes.'),('After 
20 minutes, add the asparagus with a little extra olive oil, if needed. Toss to coat and cook for a further 15 minutes.'),('Season with extra balsamic vinegar, 
salt and pepper.'),('Serve and enjoy!'),('Place quinoa and broth into a pot. Bring to a boil over medium heat. Cover and reduce heat to low, simmer for 15-20 
minutes until all liquid is absorbed.'),('Meanwhile while quinoa is cooking, place olive oil, garlic, onion and ginger into large skillet. Cook over medium heat 
3-4 minutes until onions are translucent. Add sweet potatoes and brussels sprouts and let cook for 10 minutes or until they soften.'),('Add cooked quinoa to 
skillet and thoroughly combine.'),('Remove from heat.'),('Add cranberries and almonds and mix again.'),('Cook the quinoa: First, rinse the quinoa in a fine mesh 
colander under running water. In a medium-sized pot, combine the rinsed quinoa and 1 ½ cups water. Bring the mixture to a gentle boil over medium heat, then 
reduce the heat to medium-low and gently simmer the quinoa until it has absorbed all of the water. Remove the quinoa from heat, cover the pot and let it rest for 
5 minutes. Uncover the pot and fluff the quinoa with a fork. Set it aside to cool.'),('Meanwhile, make the peanut sauce: Whisk together the peanut butter and 
tamari until smooth (if this is difficult, microwave the mixture for up to 30 seconds to loosen it up). Add the remaining ingredients and whisk until smooth. If 
the mixture seems too thick to toss into the salad, whisk in a bit of water to loosen it up (I didn’t need to do this).'),('In a large serving bowl, combine the 
cooked quinoa, shredded cabbage, carrot, snow peas, cilantro and green onion. Toss to combine, then pour in the peanut sauce. Toss again until everything it 
lightly coated in sauce. Taste, and if it doesn’t taste quite amazing yet, add a pinch of salt and toss again. Divide into individual bowls and garnish with 
peanuts.'),('This salad keeps well, covered and refrigerated, for about 4 days. If you don’t want your chopped peanuts to get soggy, store them separately from 
the rest and garnish just before serving.'),('Cook orzo: Cook your orzo according to package instructions, taking care to not overcook it. Leave it slightly firm, 
not mushy. (I boil mine in salted water for about 7-9 minutes, stirring occasionally to prevent it from sticking on the bottom.) When orzo is cooked, carefully 
pour it in a mesh strainer, rinse with cool water, and drain well.'),('Make the dressing: Place all dressing ingredients in a small bowl. Whisk until miso is 
smooth and combined.'),('Cook asparagus: Trim off woody ends of asparagus spears. Add 1 cup water to a large skillet over medium-high heat. When it is gently 
boiling, carefully add asparagus. Cover with lid and steam for about 4-5 minutes or until spears are just tender. (Take care not to overcook. The time may vary 
depending on how thick your spears are.)'),('Cut asparagus: When asparagus is cooked, carefully remove with tongs and transfer to a cutting board. Cut into 1-inch 
pieces.'),('Prepare the rest: Slice green onions. Roughly chop parsley and fresh dill. Place in a medium mixing bowl. Then add the rest: cut asparagus, cooked 
orzo, vegan parmesan, and dressing. Toss to combine. Adjust the flavors as desired or add salt & pepper to taste.'),('In a large ceramic/enamel-lined Dutch oven 
or similar stock pot, add the finely minced onion and carrot; sauté over medium heat until they begin to soften, approximately 4 to 5 minutes. Add a tablespoon or 
so of water if the onions and carrots start to stick and/or to prevent burning.'),('Add all the other the remaining ingredients to the Dutch oven, except the baby 
spinach and cilantro, bring to boil, then immediately lower to a simmer. Stir well to incorporate all the ingredients.'),('Simmer uncovered over medium-low heat 
for 45 minutes. At 45 minutes, push the potatoes over to the side of the pot (as much as possible) and remove approximately one cup of the cooked lentils and place 
them in a wide bowl.  Smash them with a fork or potato masher, then return to the pot. This will give the stew more varied texture.'),('Test the flavors, add more 
spices (see recipes notes), if necessary, to achieve the level of flavor you desire. Add the baby spinach and cook for another 15 minutes.'),('Discard the bay 
leaf.'),('Top individual servings with freshly chopped cilantro.'),('Heat the oil in a large soup pot over medium heat. Add in the garlic and onion, and saute 
until soft and fragrant, about 3 minutes. Add in the ginger and curry paste and stir to combine with the onion and garlic. Cook for 3 more minutes, stirring often. 
Add in the raw butternut squash cubes and slowly pour in the broth, stirring to combine. Season with salt and pepper. Bring to a boil and then reduce heat to a 
simmer and cover. Cook for 20 minutes, or until butternut squash is tender. Remove from heat and let cool for a few minutes.'),('Pour the soup into a blender in 
batches and blend until smooth, or use an immersion blender to blend in the pot or slow cooker. Before serving, remove the soup from the heat or turn off the 
slow cooker and mix in the coconut milk (saving a few tablespoons to garnish) and lime juice (if using). Mix well. Season with additional salt and pepper, 
if desired, and add sriracha to taste for extra spice, if using. Pour into bowls and drizzle the remaining coconut milk on top. Swirl the coconut milk with a 
spoon. Sprinkle with chopped cilantro and chopped peanuts. Serve warm with naan bread.'),('For the sauce, puree all ingredients in a food processor or blender 
until smooth. Taste and adjust.'),('For the carrots, toss all ingredients together. Roast at 450 degrees for 20-30 minutes or until golden brown and roasty. 
<– favorite word.'),('Cook the rice according to package directions. I used a rice cooker.'),('For the curry, heat the oil in a skillet over medium heat. Add the 
onion and garlic; saute for 3-5 minutes. Add the curry paste and spices; saute for 2-3 minutes.'),('Add the lentils, tomato sauce, and broth. Simmer until lots of 
the liquid has evaporated – continue adding 1/2 cup of liquid as needed (the lentils will just keep soaking it up). Repeat this process for about 30-45 minutes 
until the lentils are soft.'),('Add the rice to the lentil mixture; stir to combine, adding extra broth or water as necessary. Season with salt.'),('Serve in bowls 
topped with the roasted carrots, avocado slices, cilantro, and cilantro cashew dressing.'),('Cook sweet potatoes: Pierce sweet potatoes with fork a few times. 
Place in microwave and microwave on high for 4-6 minutes or until cooked though. This may take up to 10 minutes depending on how thick your sweet potatoes are. 
Alternatively you can roast them in the oven at 375 degrees for 45 minutes or until fork tender. Once sweet potatoes are cooked, remove the skins and place 
potatoes in a medium bowl. Mash with a fork; set aside.'),('In a separate large bowl, add black beans, cumin, chili powder and red pepper flakes, if desired. 
Stir to combine then set aside.'),('In a separate medium bowl, beat eggs (or egg whites) together. Spray a skillet with nonstick cooking spray and place over 
medium-low heat. Add in eggs and cook. Fold every few minutes to get fluffy eggs. Once cooked, remove from heat.'),('To assemble burritos, make sure you have 
slightly warm tortillas; it makes them easier to roll. You can warm them up for 10-20 seconds in the microwave before assembling. Lay out warm tortillas and evenly 
distribute and spread mashed sweet potato on each as demonstrated in the video. Evenly distribute scrambled eggs, diced avocado, black beans, and shredded cheese 
on each tortilla. Next drizzle about tablespoon of enchilada sauce in each. Season with salt and pepper, if desired. Tuck ends in, then roll up burritos.'),('To 
warm up: Place on baking sheet in oven at 300 degrees for 5-10 minutes or simply microwave them for a minute or two. Serve with sour cream, greek yogurt, salsa, 
or hot sauce. Makes 6 burritos.'),('Preheat the oven to 400 degrees F. Peel the sweet potatoes and chop into 1/2- to 1-inch pieces (keep them all as close to the 
same size as possible so they cook evenly). Place the sweet potatoes on the sheet pan and drizzle with a tablespoon or so of oil and sprinkle with a pinch or two 
of coarse, kosher salt and coarsely ground black pepper. Roast in the oven for 15-20 minutes until tender, flipping once, if desired; don’t over cook or they’ll 
fall apart in the salad.'),('Let the potatoes cool for 5-10 minutes on the sheet pan. While the potatoes cool, make the dressing, by combining all the ingredients 
in a jar, blender, or bowl and shake/process/whisk until smooth.'),('Add the cooled sweet potatoes to a large bowl. Add the cooked lentils, bell pepper, spinach, 
and celery. Toss lightly. Drizzle the dressing over the top, and gently mix to coat the salad ingredients with the dressing.'),('Garnish or serve with crumbled 
feta (optional but delicious). The salad is best served at room temperature, in my opinion.'),('Make the Brussels sprouts: Arrange a rack in the middle of the oven 
and heat to 400°F.'),('Place the Brussels sprouts on a rimmed baking sheet, drizzle with the olive oil, and season with salt and pepper. Spread into an even layer. 
Roast until tender and golden-brown, 25 to 30 minutes. Remove from the oven and immediately drizzle with the honey. Meanwhile, cook the lentils and quinoa.'),
('Make the pilaf: Bring a large saucepan of salted water to a boil over medium heat. Add the lentils and simmer until tender, 20 to 25 minutes. Drain.'),('Heat the 
oil in a large saucepan over medium heat until shimmering. Add the onion and garlic and sauté until softened. Add the cumin, coriander, cinnamon, and turmeric, and 
cook until fragrant, about 30 seconds. Add the quinoa and stir to coat the grains in the spices. Add the broth, cover, and cook until the broth is absorbed and the 
quinoa is translucent, about 20 minutes. Remove from the heat and let sit for 5 minutes for the grains to fluff up. Add the lentils and gently fluff with a fork or 
chopsticks.'),('To serve, pile the pilaf onto a large platter, top with the honey-roasted Brussels sprouts, and scatter over the herbs and hazelnuts.'),('In a 
large skillet over medium heat, warm 3 tablespoons of the olive oil.'),('Add the onion and saute until it begins to soften, about 3 minutes.'),('Add the minced 
garlic and saute until golden, about 2 minutes longer.'),('Stir in the tomatoes, basil and 2 tablespoons of the parsley and cook, uncovered, stirring occasionally, 
until slightly thickened, about 15 minutes.'),('Remove from heat and set aside.'),('Lightly season the tuna steaks on both sides with salt and pepper.'),('In 
another skillet, large enough to hold the fish in a single layer, warm the remaining 3 tablespoons olive oil over medium heat.'),('Add the crushed garlic and cook, 
stirring often, until golden, about 2 minutes. Remove and discard the garlic.'),('Add the tuna steaks to the skillet, raise the heat to medium-high, and cook, 
turning once, until lightly browned on both sides, about 2-3 minutes per side.'),('Pour the reserved sauce directly over the fish, reduce the heat to low, and add 
the olives and capers, and cook for another 5 minutes (sauce will thicken a little more).'),('Transfer tuna steaks and sauce to plates and garnish with parsley.'),
('Preheat oven to 375 F. Line baking sheets with parchment paper or silicone baking mat.'),('Melt the butter in a large microwave-safe bowl. The butter should be 
just melted.'),('Add brown sugar, and mix in.'),('Let stand 5 minutes.'),('Add egg and egg yolk; stir to combine.'),('Stir in vanilla extract.'),('Add flour, 
baking soda, and salt. Stir until just combined.'),('Stir in chocolate chips.'),('Using a medium cookie scoop (1.5 tablespoon), drop scoops of dough 2 inches apart 
on prepared cookie sheet.'),('Bake for about 7-10 minutes, or until the edges of the cookies are golden brown. The centers should still look soft and slightly 
underbaked. That will help to keep the cookies soft.'),('Let cool on cookie sheet for 5 minutes. Remove to wire rack to finish cooling.'),('Set a large pot of 
water over high heat to boil (this will be your pasta cooking water). Meanwhile, in a large sauteuse, sauté pan, or skillet, heat olive oil over medium heat. Once 
the olive oil is hot, add the shallots, lemon zest, crushed red pepper and salt. Cook until the shallots are soft and translucent (careful, do not let them burn!).
Add the sardines and capers to the pan. Saute for about 2 minutes until warmed through, breaking up the sardines into smaller pieces as you sauté.'),('When the 
sardines begin to turn golden, slowly stir in the fresh lemon juice. Turn heat to lowest setting to keep warm while you cook your pasta. When pasta water boils, 
cook pasta according to package directions. Drain, reserving a cup of the pasta cooking water.'),('Add the cooked pasta and fresh chopped parsley or basil to the 
pan with the sauce (alternatively, you can put the pasta back in the large pasta pot and pour the sauce over it). Toss pasta to evenly coat with sauce, mixing well 
with the other ingredients. If the pasta seems too dry, add a little of the reserved pasta cooking water, 1 tbsp at a time, to loosen it a bit. It should not be 
thick or heavy, and the noodles should be lightly coated with oil. Add additional salt, lemon or chili pepper flakes to taste, if desired. Serve hot.'),('Cook 
penne pasta: Cook 8 ounces penne pasta according to package instructions. Typically this means bringing a pot of water to a boil and adding 2 tablespoons salt to 
salt the water. Add pasta, then cook until al dente, about 7-8 minutes. Drain and set aside.'),('Cook cherry tomatoes and garlic: Meanwhile, heat 2 teaspoons olive 
oil in a pan over medium heat and add 2 cups cherry tomatoes, cooking until they begin to brown and release their liquids, about 5 minutes. Add 2 cloves garlic and 
cook until it begins to brown and become aromatic, about 1-2 minutes. Remove pan from heat to avoid overcooking the garlic.'),('Combine pasta ingredients: When 
pasta is done, add the drained pasta to the pan and top with 8 fluid ounces pesto sauce. Stir to mix ingredients, then serve.'),('Put all the ingredients in a 
saucepan and whisk constantly over a gentle heat, ideally with a milk frother if you have one. Once hot, pour into mugs and sprinkle with a little more 
cinnamon to serve.');

insert into recipe(name,difficulty_level,recipe_type,description,portions,grams_fat_per_serving,grams_protein_per_serving,grams_carbohydrates_per_serving,
ingri_id,time_id,cbc_id) values
('fried rice',1,'cooking','Moms fried rice',4,15,14,44,3,1,18),
('lentil soup',3,'cooking','This lentil recipe is one of the best nourishing, simple dishes you can make with dried lentils that’s 100% delicious. 
Use green lentils, red lentils, brown lentils or a lentil soup mix.',6,5,18,48,11,2,34),
('buckwheat tabboulah',1,'cooking','Buckwheat tabbouleh is just the thing you need in the fridge to quickly throw into a lunch bag because it makes for such 
good leftovers!',4,8,5,28,30,3,4),
('lentil rice bowls with egg',2,'cooking','Leftovers can be stored in an airtight container in the refrigerator for up to 5 days.',4,24.1,24.4,77.3,11,4,34),
('italian vegetable lentil soup',2,'cooking','It tastes a lot like minestrone, but with the addition of protein-rich lentils.',6,6,15,50,11,5,38),
('one pot chicken & potatoes',1,'cooking','One Pan Chicken & Potatoes recipe is a simple, easy and delicious dinner idea that comes together in minutes.',5,38,36
,38,1,6,3),
('sweet korean lentils',2,'cooking','All the flavours of Korean BBQ made vegan and gluten free! Sweet and mildly spiced, just 15 minutes to make!',4,6,13,36,11,7,
43),
('buckwheat beetroot salad',3,'cooking','This buckwheat and beetroot salad is light, high in protein and low in calories, filling and naturally gluten-free too.',
4,17,14,69,30,8,56), 
('new potato lentil salad',2,'cooking','This roasted French potato salad with lentils and a herby dressing is a far cry from standard mayo-filled potato salad - 
its very light and a meal in itself with protein-packed lentils and spinach.',8,6,14,24,49,9,28), 
('ham & potato soup',3,'cooking','This ham and potato soup recipe is delicious and easy to make. The best part? You can add additional ingredients like carrots and
 extra ham, and it still turns out great.',8,11,6,20,49,10,28), 
('healthy buckwheat soup',1,'cooking','This healthy buckwheat soup is packed with tender, fall-off-the bone meat and is as filling as it is comforting. Makes for 
amazing leftovers!',8,6,10,10,30,11,70),
('buckwheat beef pilaf',4,'cooking','This buckwheat and beef pilaf is a play on traditional rice plov, but I think I like it even more! The meat is fall-apart 
tender and you’ll be running to refill your plate.',8,18,16,13,13,12,59),
('vegetable noodle soup',1,'cooking','Classic Vegan Chicken Noodle Soup is made vegan by simply replacing the chicken with healthy, hearty potatoes.',8,1.9,3.4,
33.5,124,13,3),
('bacon and honey potato salad',2,'cooking','An easy roasted red potato salad sprinkled with crispy bacon and fresh Italian parsley, all drizzled with a tasty 
honey mustard dressing. It is the perfect accompaniment to chicken, beef, pork and fish and a nice change from mayo-based potato salad.',4,27,7,42,49,14,38),
('pretzel sticks',3,'pastry','German Soft Pretzel Sticks. These pretzels are golden and slightly sweet. Perfect appetizer for a crowd.',24,1.5,8,43,61,15,30),
('golden french lentil soup',2,'cooking','A french lentil soup that is hearty and nutritious. This vegan stew is satisfying and the perfect cozy meal!',3,14,13,39,
11,16,28),
('lentil shepherds pie',3,'cooking','Perfect for the holidays or a hearty weekend meal. The garlic mashed potatoes take this from ordinary to extraordinary!',8,9,
19,77,11,14,3),
('honey lime chicken',2,'cooking','Pan-Roasted Honey Lime Chicken Thighs - one of the best and the easiest chicken thigh recipes you will ever try!',4,39,32,12,1,
17,3),
('lentil curry',1,'cooking','One sure sign you’re cooking something really tasty is when the aroma fills your house and makes it smell magical. This is one of 
those recipes.',4,4.9,11.3,80.5,11,34,33),
('dutch oven bread',1,'pastry','If you don’t have a bread machine, like me, and want artisan bread, consider this a splurge-worthy recipe.',1,1,7,48,61,18,15),
('potato apple roast',3,'cooking','With just 20 minutes of prep and only one pan, you’ll be able to put a delicious kid-friendly dinner on the table without breaking a 
sweat.',4,9,17,54,49,19,3),
('baking powder biscuits',1,'pastry','This recipe reflects the historical and beloved nature of biscuits made with buttermilk.',12,4.5,4,25,61,10,3),
('sugar cookies',2,'pastry','If you are craving a cookie to knock your socks off, look no further than these Easy Sugar Cookies.',24,8,2,23,61,20,3),
('potato curry',2,'cooking','It is an easy one-pot recipe with minimal preparation and simple instructions.',2,51,11,67.5,49,21,33),
('bucatini all amatriciana',4,'cooking','This classic sauce takes its spiciness from black pepper and dried chiles and its depth of flavor from 
guanciale, Italian salt-cured pork jowl.',4,14.7,19.4,75.9,172,34,38),
('brioche chocolate rolls',2,'pastry','Soft, fluffy, warm brioche with melty chocolate chips scattered throughout the roll, resulting in a bakery-worthy treat!',
12,10,8.5,54,61,22,28),
('naan',2,'pastry','This naan is wonderfully easy to make, and the results are delicious.',16,9,5,35,61,23,33),
('lemon poppy seed scones',1,'pastry','This classic scone recipe with bright lemon flavors pairs perfectly with your morning coffee, afternoon tea, and is a 
wonderful addition to a brunch menu.',8,7,3,38,61,35,3),
('balsamic dijon root vegetables',2,'cooking','Balsamic Dijon Roasted Root Vegetables is an easy and healthy side dish bursting with tangy balsamic flavor and 
loaded with sweet potatoes, carrots and onions.',5,1,3,33,49,9,3),
('best baked chicken legs',1,'cooking','This simple 5 ingredient recipe makes The Best Baked Chicken Legs I have ever had in my whole life!',10,10,12,24,109,24,3),
('spanish lentil stew',2,'cooking','The perfect dish for the cooler weather, as it warms your soul and fills your body with so much goodness.',4,8,17,55,11,2,63),
('chocolate chip irish soda bread',3,'pastry','Best served slathered with plenty of Irish butter, Irish soda bread is the best way to start your St. Patrick’s Day 
festivities.',8,17,10,79,61,5,36),
('sweet potatoes with yogurt and chickpeas',2,'cooking','Roast your sweet potatoes ahead of time to get this dish on the table superfast come dinner.',4,8,12,51,
49,36,3),
('spanish chickpeas',3,'cooking','Smoky and sweet, this brothy chickpea dish is often served tapas-style in Spain.',4,5,8,41,115,37,63),
('lemon fettuchini',2,'cooking','These lemon spaghetti with spinach are the perfect recipe for busy weeknights!',2,23,13,64,172,25,38),
('thai veggie soup',3,'cooking','This Thai Curry Vegetable Soup is packed with vegetables, spicy Thai flavor, and creamy coconut milk.',4,10.6,7.93,55.83,120,26,68),
('balsamic potatoes and asparagus',1,'cooking','Flavourful and comforting traybake of roasted potatoes with asparagus tips and a splash of balsamic vinegar.',4,1,
7,47,49,27,15),
('quinoa brussels sweet potato salad',3,'cooking','This Sweet Potato Brussels Sprouts Quinoa Bowl is a plant-based, protein packed bowl of healthy comfort food.',
6,9,7,31,126,26,38),
('thai peanut cabbage quinoa',2,'cooking','This healthy salad is vegan, gluten free, and packs well for lunch.',4,15.4,13.6,37.5,126,10,68),
('lemon garlic asparagus with orzo',3,'cooking','Celebrate spring with this Lemon Asparagus Orzo recipe!',5,3,8,30,135,28,31),
('moroccan sweet potato lentil stew',3,'cooking','Warm and deliciously fragrant spices make this yummy Moroccan-inspired sweet potato and lentil stew a new 
family favorite.',6,0.6,14,49.8,86,29,51),
('thai squash soup',3,'cooking','The fact that this soup is both warm (obviously) and has a bit of a kick to it makes it perfect to combat the chill.',4,15.2,9.5,
40.7,150,38,68),
('roasted carrot & peanut sauce',3,'cooking','These Lentil Curry Bowls have roasted carrots, sliced avocado, and a creamy cilantro cashew sauce. Powerhouse 
comfort food!',6,12.3,17.3,70.6,3,39,33),
('sweet potato breakfast burritos',2,'cooking','Healthy breakfast burritos stuffed with sweet potatoes,black beans,eggs and avocado.',6,13.8,18.1,54.3,161,30,48),
('roasted sweet potato lentil salad',2,'cooking','This roasted sweet potato lentil salad is next level delicious! It might look unassuming, but it is incredible
 and so easy to make!',8,4,5,31,86,31,38),
('brussel honey lentil quinoa',2,'cooking','Every flavor you are craving shows up in this lentil-quinoa pilaf that is topped with honey-roasted Brussels sprouts.',
5,17.1,23.6,82,127,40,18),
('mediterranean tuna steaks',2,'cooking','Mediterranean Tuna Steaks are so delicious and happen to be good for you, too!',4,10,41,7,167,26,38),
('chewy chocolate chip cookies',2,'pastry','Chewy brown sugar chocolate chip cookie recipe',36,7,1,22,112,32,3),
('sardine mediterranean pasta',2,'cooking','Easy, delicious and heart healthy recipe for Mediterranean Sardine Pasta with light lemon olive oil sauce.',4,22,7,44,
173,33,38),
('pesto tomato penne',1,'cooking','Pesto Penne with Burst Cherry Tomatoes, a simple plant-based penne pasta recipe with burst cherry tomatoes,crispy garlic and
 pesto sauce.',4,14,10,48,176,25,38),
('turmeric latte',1,'cooking','Whizz together and benefit from the anti-inflammatory and antioxidant effects from the curcumin.',2,2,1,3,182,41,33);

insert into recipe_ingridient(recipe_id,ingri_id,quantity,quantity_type) values (1,2,1,'number'),(1,3,3,'cup'),(1,4,1,'teaspoon'),(1,5,8,'number'),(1,6,1,'cup'),
(1,7,8,'number'),(1,8,1,'cup'),(1,9,1,'cup'),(1,10,0.25,'cup'),(2,11,400,'grams'),(2,12,2,'tablespoon'),(2,13,1,'number'),(2,15,1,'number'),
(2,16,2,'number'),(2,17,400,'grams'),(2,18,1500,'mls'),(2,20,0.5,'teaspoon'),(2,21,0.5,'teaspoon'),(2,22,1.5,'teaspoon'),(2,23,2,'number'),(2,24,1,'number'),
(2,25,1,'number'),(2,26,0.25,'teaspoon'),(2,27,0.25,'teaspoon'),(3,30,1,'cup'),(3,31,1,'cup'),(3,32,1,'number'),(3,24,1,'number'),(3,25,1,'number'),
(3,13,0.25,'cup'),(3,12,1,'tablespoon'),(3,34,0.5,'cup'),(4,35,1,'cup'),(4,11,1,'cup'),(4,36,4.5,'cup'),(4,12,3,'tablespoon'),(4,37,2,'number'),(4,20,1,'teaspoon'),(4,28,0.5,'cup'),(4,2,4,'number'),(4,38,2.5,'tablespoon'),(4,39,0.25,'cup'),(5,12,2,'tablespoon'),(5,15,1.5,'cup'),
(5,37,1.5,'cup'),(5,11,1.25,'cup'),(5,44,1.5,'teaspoon'),(5,45,0.5,'teaspoon'),(5,46,0.5,'teaspoon'),(5,41,1.5,'cup'),(5,42,2,'cup'),
(5,24,1,'tablespoon'),(5,36,14.5,'oz'),(5,43,14.5,'oz'),(6,48,8,'number'),(6,49,7,'number'),(6,15,5,'number'),(6,37,1,'number'),(6,26,1,'tablespoon'),
(6,27,1,'teaspoon'),(6,50,4,'teaspoon'),(6,22,0.5,'teaspoon'),(6,12,4,'tablespoon'),(7,63,2,'cup'),(7,10,0.25,'cup'),(7,72,2.5,'tablespoon'),(7,134,1,'teaspoon'),
(7,100,0.5,'teaspoon'),(7,4,1,'tablespoon'),(7,27,0.5,'number'),(7,11,1,'cup'),(7,7,2,'number'),(8,51,2,'cup'),(8,52,3,'number'),(8,139,50,'grams'),
(8,6,2.5,'number'),(8,53,0.5,'number'),(8,54,1,'teaspoon'),(8,26,0.33,'teaspoon'),(8,55,2,'tablespoon'),(8,12,3,'tablespoon'),(8,56,1.5,'tablespoon'),
(9,49,1000,'grams'),(9,26,1.5,'teaspoon'),(9,11,300,'grams'),(9,118,50,'grams'),(9,12,74,'mls'),(9,58,10,'grams'),(9,78,2,'tablespoon'),
(9,57,1,'teaspoon'),(9,71,0.5,'teaspoon'),(9,27,0.5,'teaspoon'),(10,49,3.5,'cup'),(10,63,3.25,'cup'),(10,59,0.75,'cup'),(10,16,0.33,'cup'),
(10,37,0.33,'cup'),(10,19,2,'tablespoon'),(10,27,1,'teaspoon'),(10,26,0.5,'teaspoon'),(10,60,5,'tablespoon'),(10,61,5,'tablespoon'),(10,62,2,'cup'),
(11,30,0.5,'cup'),(11,12,1,'tablespoon'),(11,15,1,'number'),(11,37,1,'number'),(11,49,2,'number'),(11,28,0.25,'cup'),(11,23,3,'number'),(11,26,1,'tablespoon'),
(11,27,1,'teaspoon'),(11,66,1,'lb'),(12,12,0.3,'cup'),(12,60,8,'tablespoon'),(12,37,1,'number'),(12,15,3,'number'),(12,30,2.5,'cup'),(12,26,2,'teaspoon'),
(12,27,0.25,'teaspoon'),(12,14,1,'number'),(12,66,1.12,'lb'),(12,63,5.25,'cup'),(13,15,4,'number'),(13,16,4,'number'),(13,37,1,'cup'),(13,67,3,'number'),
(13,63,6.5,'cup'),(13,68,2,'number'),(13,46,1,'teaspoon'),(13,26,1,'teaspoon'),(13,69,2,'tablespoon'),(13,124,2,'cup'),(14,70,2,'tablespoon'),(14,57,1,'teaspoon'),
(14,71,1,'tablespoon'),(14,26,0.5,'teaspoon'),(14,27,0.25,'teaspoon'),(14,12,0.33,'cup'),(14,28,0.25,'cup'),(14,67,2,'lb'),(15,72,0.5,'cup'),(15,63,2.2,'cup'),
(15,73,5.5,'teaspoon'),(15,4,0.25,'cup'),(15,61,5.75,'cup'),(15,74,0.75,'cup'),(15,2,1,'number'),(15,60,1,'tablespoon'),(16,75,0.5,'cup'),(16,63,2,'cup'),
(16,12,2,'tablespoon'),(16,37,1,'number'),(16,26,1.25,'teaspoon'),(16,15,2,'number'),(16,16,2,'number'),(16,20,2,'teaspoon'),(16,46,1.5,'teaspoon'),
(16,76,1,'teaspoon'),(16,43,1,'number'),(16,77,0.75,'cup'),(16,36,4,'cup'),(16,42,3,'cup'),(16,78,1.5,'teaspoon'),(17,12,1,'tablespoon'),(17,37,1,'number'),
(17,15,2,'number'),(17,46,2,'teaspoon'),(17,11,1.5,'cup'),(17,36,3,'cup'),(17,9,1,'cup'),(17,10,2,'tablespoon'),(17,79,0.25,'cup'),(17,6,16,'oz'),
(18,80,4,'tablespoon'),(18,71,2,'tablespoon'),(18,10,1,'tablespoon'),(18,48,7,'number'),(18,26,0.5,'teaspoon'),(18,12,2,'tablespoon'),(18,7,2,'number'),
(18,81,1,'number'),(19,37,1,'number'),(19,82,0.5,'number'),(19,83,1,'number'),(19,84,1,'tablespoon'),(19,85,1.5,'teaspoon'),(19,76,0.5,'teaspoon'),(19,36,4,'cup'),
(19,86,3,'cup'),(19,87,1.5,'cup'),(19,88,0.75,'cup'),(19,42,1,'number'),(19,26,1,'teaspoon'),(20,61,3,'cup'),(20,73,0.5,'teaspoon'),(20,26,1.75,'teaspoon'),
(20,63,1.5,'cup'),(20,89,1.5,'cup'),(21,12,1,'tablespoon'),(21,26,1,'teaspoon'),(21,27,0.5,'teaspoon'),(21,91,2,'number'),(21,57,2,'tablespoon'),
(21,92,2,'tablespoon'),(21,174,1,'tablespoon'),(21,49,1.5,'lb'),(22,61,3,'cup'),(22,26,1,'teaspoon'),(22,94,1,'tablespoon'),(22,93,1,'tablespoon'),
(22,60,6,'tablespoon'),(22,111,250,'grams'),(23,61,2.5,'cup'),(23,74,0.75,'teaspoon'),(23,94,1,'teaspoon'),(23,60,1,'cup'),(23,93,1.5,'cup'),(23,95,3,'number'),
(23,96,1,'teaspoon'),(24,49,1,'lb'),(24,12,1,'tablespoon'),(24,97,15,'oz'),(24,98,1,'cup'),(24,24,1,'tablespoon'),(24,85,2,'teaspoon'),(24,22,0.5,'teaspoon'),
(24,76,0.5,'teaspoon'),(24,26,0.5,'teaspoon'),(24,99,0.25,'teaspoon'),(25,12,2,'tablespoon'),(25,5,4,'oz'),(25,100,0.5,'teaspoon'),(25,27,0.5,'teaspoon'),
(25,37,0.75,'cup'),(25,43,28,'oz'),(25,172,12,'oz'),(25,101,0.25,'cup'),(26,62,1.5,'cup'),(26,60,6,'tablespoon'),(26,93,0.25,'cup'),(26,73,2.25,'teaspoon'),
(26,61,5,'cup'),(26,26,1,'teaspoon'),(26,2,3,'number'),(26,112,1,'cup'),(27,61,3,'cup'),(27,103,1,'cup'),(27,74,1,'teaspoon'),(27,94,1.5,'teaspoon'),
(27,93,1,'tablespoon'),(27,73,0.75,'teaspoon'),(27,63,0.25,'cup'),(27,62,0.75,'cup'),(27,104,1,'cup'),(28,61,2,'cup'),(28,93,2.5,'tablespoon'),
(28,105,2,'tablespoon'),(28,94,1,'tablespoon'),(28,26,0.25,'teaspoon'),(28,60,5.5,'tablespoon'),(28,2,1,'number'),(28,178,0.67,'cup'),(28,107,1.75,'cup'),
(28,24,0.25,'cup'),(29,86,2,'cup'),(29,108,2,'cup'),(29,13,1,'number'),(29,12,1,'tablespoon'),(29,56,2,'tablespoon'),(29,71,2,'teaspoon'),(29,57,1,'tablespoon'),
(29,26,1,'teaspoon'),(30,109,2.5,'lb'),(30,71,0.75,'cup'),(30,10,0.5,'cup'),(30,110,0.25,'cup'),(31,12,2,'tablespoon'),(31,37,0.5,'number'),(31,179,0.5,'number'),
(31,164,0.5,'number'),(31,22,1,'teaspoon'),(31,97,0.5,'cup'),(31,11,1,'cup'),(31,49,2,'number'),(31,15,1,'number'),(31,36,5,'cup'),(31,23,1,'number'),
(32,61,3.5,'cup'),(32,93,0.3,'cup'),(32,74,1,'teaspoon'),(32,26,1.5,'teaspoon'),(32,60,4,'tablespoon'),(32,111,1.5,'cup'),(32,2,1,'number'),(32,112,1.5,'cup'),
(33,104,1,'cup'),(33,114,2,'teaspoon'),(33,22,2,'teaspoon'),(33,12,2,'tablespoon'),(33,115,15,'oz'),(33,39,0.25,'cup'),(33,86,4,'number'),(34,12,1,'tablespoon'),
(34,37,1,'number'),(34,20,2,'teaspoon'),(34,116,2,'teaspoon'),(34,22,2,'teaspoon'),(34,115,15,'oz'),(34,117,0.33,'cup'),(34,118,6,'oz'),(34,17,1,'cup'),
(34,63,0.5,'cup'),(35,37,1,'number'),(35,36,2.5,'cup'),(35,122,1,'cup'),(35,172,9,'oz'),(35,118,3,'cup'),(35,25,1,'teaspoon'),(36,4,2,'tablespoon'),
(36,83,1,'tablespoon'),(36,100,2,'tablespoon'),(36,86,1,'number'),(36,36,4,'cup'),(36,122,13,'oz'),(36,123,0.5,'tablespoon'),(36,72,0.5,'tablespoon'),
(36,124,3.5,'oz'),(36,13,0.5,'number'),(36,81,1,'number'),(37,49,1000,'grams'),(37,125,250,'grams'),(37,12,2,'tablespoon'),(37,56,4,'tablespoon'),
(37,26,0.5,'teaspoon'),(38,126,1,'cup'),(38,36,1.5,'cup'),(38,12,1,'tablespoon'),(38,37,0.5,'number'),(38,83,1,'tablespoon'),(38,86,2,'cup'),(38,127,1,'cup'),
(38,128,2,'tablespoon'),(38,129,0.25,'cup'),(39,126,0.75,'cup'),(39,63,1.5,'cup'),(39,130,2,'cup'),(39,15,1,'cup'),(39,131,1,'cup'),(39,21,0.5,'cup'),
(39,7,0.25,'cup'),(39,132,0.25,'cup'),(39,133,0.25,'cup'),(39,10,3,'tablespoon'),(39,92,1,'tablespoon'),(39,78,1,'tablespoon'),(39,134,1,'teaspoon'),
(39,83,1,'teaspoon'),(39,80,1.5,'tablespoon'),(40,135,1,'lb'),(40,136,1,'cup'),(40,7,3,'number'),(40,28,0.25,'cup'),(40,58,3,'tablespoon'),(40,137,3,'tablespoon'),
(40,25,0.5,'teaspoon'),(40,24,0.25,'cup'),(40,138,1.5,'teaspoon'),(41,37,1,'number'),(41,15,1,'number'),(41,86,3,'number'),(41,11,1.5,'cup'),(41,63,7.5,'cup'),
(41,36,1,'cup'),(41,43,1,'number'),(41,139,2,'cup'),(41,23,1,'number'),(41,20,1,'teaspoon'),(41,116,0.5,'teaspoon'),(41,76,0.5,'teaspoon'),(41,26,2.75,'teaspoon'),
(41,27,0.25,'teaspoon'),(42,4,1,'tablespoon'),(42,37,1,'number'),(42,83,1,'teaspoon'),(42,120,2,'tablespoon'),(42,36,2,'cup'),(42,150,4,'cup'),(42,119,15,'oz'),
(42,26,0.5,'teaspoon'),(42,27,0.25,'teaspoon'),(42,21,0.33,'cup'),(42,132,0.33,'cup'),(43,21,0.5,'cup'),(43,75,0.75,'cup'),(43,63,0.33,'cup'),
(43,26,0.25,'teaspoon'),(43,71,1.5,'teaspoon'),(43,15,9,'number'),(43,12,2,'tablespoon'),(43,85,2,'teaspoon'),(43,153,0.5,'teaspoon'),(43,35,1,'cup'),
(43,37,0.5,'cup'),(43,120,2,'tablespoon'),(43,114,0.5,'teaspoon'),(43,11,1,'cup'),(43,154,14,'oz'),(43,36,2,'cup'),(44,160,6,'number'),(44,86,3,'number'),
(44,161,15,'oz'),(44,20,0.5,'teaspoon'),(44,153,0.25,'teaspoon'),(44,2,6,'number'),(44,155,1,'number'),(44,162,0.5,'cup'),(44,163,0.33,'cup'),(45,86,2,'lb'),
(45,11,0.5,'cup'),(45,164,1,'number'),(45,16,2,'number'),(45,70,2,'tablespoon'),(45,12,2,'tablespoon'),(45,20,0.25,'teaspoon'),(45,22,0.25,'teaspoon'),
(45,26,0.25,'teaspoon'),(46,127,2.25,'lb'),(46,12,3.5,'tablespoon'),(46,71,2,'tablespoon'),(46,77,1,'cup'),(46,37,1,'number'),(46,20,2,'teaspoon'),
(46,21,2,'teaspoon'),(46,166,0.5,'teaspoon'),(46,76,0.5,'teaspoon'),(46,126,2,'cup'),(46,36,2,'cup'),(46,180,0.5,'cup'),(46,33,0.5,'cup'),(46,55,0.33,'cup'),
(47,12,6,'tablespoon'),(47,37,1,'number'),(47,31,1,'cup'),(47,44,8,'number'),(47,28,2,'tablespoon'),(47,167,4,'number'),(47,181,1,'cup'),(47,168,4,'teaspoon'),
(48,60,1,'cup'),(48,72,1.5,'cup'),(48,2,1,'number'),(48,95,1,'number'),(48,96,1,'tablespoon'),(48,61,2.5,'cup'),(48,74,1,'teaspoon'),(48,26,0.75,'teaspoon'),
(48,112,10,'oz'),(49,172,8,'oz'),(49,12,6,'tablespoon'),(49,156,0.25,'cup'),(49,25,2,'teaspoon'),(49,100,0.5,'teaspoon'),(49,26,0.5,'teaspoon'),(49,173,4.38,'oz'),
(49,168,3,'tablespoon'),(49,24,5,'tablespoon'),(49,28,3,'tablespoon'),(50,177,8,'oz'),(50,26,2,'tablespoon'),(50,12,2,'teaspoon'),(50,31,2,'cup'),(50,176,8,'oz'),
(51,182,350,'mls'),(51,76,0.25,'teaspoon'),(51,166,0.25,'teaspoon'),(51,183,0.25,'teaspoon'),(51,96,0.5,'teaspoon'),(51,92,1,'teaspoon');

insert into recipe_ingridient(recipe_id,ingri_id,unclear_quantity) values (1,1,'some'),(2,14,'2 cloves minced'),(2,28,'some to garnish'),(2,29,'some to serve'),
(3,14,'2 cloves minced'),(3,28,'handful'),(3,33,'handful'),(3,26,'some for taste'),(3,27,'some for taste'),(4,14,'1 clove minced'),(4,26,''),(4,27,''),(4,22,''),
(4,40,''),(5,14,'4 cloves minced'),(5,26,''),(5,27,''),(5,47,''),(6,14,'15-20 cloves minced'),(7,83,'1 inch'),(7,14,'2 cloves minced'),(7,3,'some for serving'),
(8,14,'2 cloves diced'),(8,27,''),(8,28,'to serve'),(11,63,'4 quarts'),(13,14,'3 XL cloves minced'),(14,5,'4 slices'),(14,14,'6 cloves minced'),(16,27,''),
(17,14,'4 cloves'),(19,14,'3 to 4 cloves minced'),(19,81,'juice of half lime'),(19,27,''),(21,90,'4 links'),(24,14,'5 cloves minced'),(25,14,'2 cloves minced'),
(25,26,''),(27,25,''),(29,14,'2 to 3 cloves minced'),(31,14,'4 cloves minced'),(31,26,'pinch'),(31,27,'dash'),(33,58,''),(33,14,'7 cloves minced'),(34,26,''),(34,27,''),(35,14,'3 cloves minced'),(35,24,'juice of half lemon'),(35,26,''),(35,27,''),(35,100,''),(36,14,'2 cloves'),
(36,121,'1 bunch'),(36,21,'1 handful'),(36,151,''),(37,27,'a pinch'),(38,14,'2 cloves minced'),(39,100,'a pinch'),(40,14,'1-2 cloves minced'),
(42,81,'juice of 1 lime'),(42,151,'to taste'),(42,152,'to serve'),(42,14,'5 cloves'),(42,155,'some for topping'),(44,100,'few dashes'),(45,155,''),(45,27,''),
(45,118,'1 or 2 handfuls'),(45,165,''),(46,26,''),(46,27,''),(46,14,''),(47,14,'3 cloves minced'),(47,26,''),(47,27,''),(50,14,'2 cloves sliced'),(51,27,'a grind');

insert into recipe_equipment(recipe_id,equip_id) values (1,1),(1,2),(2,3),(2,4),(2,5),(3,3),(3,6),(3,7),(4,8),(4,1),(4,7),(5,3),(6,9),(7,7),(7,1),(8,32),(8,7),
(8,3),(9,10),(9,7),(10,3),(11,3),(11,1),(12,3),(12,1),(13,3),(14,10),(14,7),(15,22),(15,7),(15,12),(15,10),(15,11),(15,1),(15,2),(16,7),(16,13),(16,14),(16,15),
(17,1),(18,7),(18,1),(19,8),(20,7),(20,16),(20,12),(20,14),(21,7),(21,17),(22,10),(22,6),(22,19),(22,20),(22,12),(23,10),(23,11),(23,7),(23,22),(23,23),(24,8),
(25,14),(25,3),(25,1),(25,24),(26,22),(26,25),(26,7),(26,12),(26,10),(26,11),(27,7),(27,16),(27,12),(27,1),(28,10),(28,11),(28,7),(28,26),(28,25),(28,27),(29,7),
(29,25),(29,10),(30,28),(30,9),(31,3),(31,29),(32,1),(32,11),(32,7),(32,26),(32,21),(33,7),(35,3),(36,5),(36,3),(37,17),(38,3),(38,1),(39,30),(39,3),(39,6),
(39,25),(39,7),(40,30),(40,7),(40,1),(40,24),(40,33),(41,14),(41,7),(41,6),(42,3),(42,13),(42,16),(43,13),(43,31),(43,1),(44,6),(44,7),(44,1),(44,10),(45,10),
(45,13),(45,25),(45,7),(46,10),(46,8),(47,1),(48,10),(48,11),(48,7),(48,23),(49,3),(49,1),(50,30),(50,1),(51,8),(51,25);

insert into recipe_step(recipe_id,step_id,step_order) values (1,1,1),(1,2,2),(2,3,1),(2,4,2),(2,5,3),(2,6,4),(2,7,5),(2,8,6),(2,9,7),(3,10,1),(3,11,2),(3,12,3),
(4,13,1),(4,14,2),(4,15,3),(4,16,4),(4,17,5),(5,18,1),(5,19,2),(5,20,3),(5,21,4),(5,22,5),(5,23,6),(5,24,7),(6,25,1),(6,26,2),(6,27,3),(6,28,4),(6,29,5),(6,30,6),
(6,31,7),(7,32,1),(7,33,2),(7,34,3),(8,35,1),(8,36,2),(8,37,3),(8,38,4),(8,39,5),(8,40,6),(9,41,1),(9,42,2),(9,43,3),(9,44,4),(9,45,5),(10,46,1),(10,47,2),
(10,48,3),(10,49,4),(10,50,5),(11,51,1),(11,52,2),(11,53,3),(11,54,4),(11,55,5),(12,56,1),(12,57,2),(12,58,3),(12,59,4),(12,60,5),(12,61,6),(13,62,1),(13,63,2),
(13,64,3),(13,65,4),(13,66,5),(13,67,6),(14,68,1),(14,69,2),(14,70,3),(15,71,1),(15,72,2),(15,73,3),(15,74,4),(15,75,5),(15,76,6),(16,77,1),(16,78,2),(16,79,3),
(16,80,4),(16,81,5),(16,82,6),(16,83,7),(16,84,8),(17,85,1),(17,86,2),(17,87,3),(17,88,4),(17,89,5),(18,90,1),(18,91,2),(18,92,3),(18,93,4),(18,94,5),(19,95,1),
(19,96,2),(19,97,3),(20,98,1),(20,99,2),(21,100,1),(21,101,2),(21,102,3),(22,103,1),(22,104,2),(22,105,3),(22,106,4),(22,107,5),(22,108,6),(22,109,7),(22,110,8),
(22,111,9),(22,112,10),(23,113,1),(23,114,2),(23,115,3),(23,116,4),(23,117,5),(23,118,6),(23,119,7),(24,120,1),(24,121,2),(24,122,3),(25,123,1),(25,124,2),
(25,125,3),(26,126,1),(26,127,2),(26,128,3),(26,129,4),(26,130,5),(26,131,6),(26,132,7),(27,133,1),(27,134,2),(27,135,3),(27,136,4),(27,137,5),(27,138,6),
(28,139,1),(28,140,2),(28,141,3),(28,142,4),(28,143,5),(28,144,6),(28,145,7),(28,146,8),(28,147,9),(28,148,10),(28,149,11),(28,150,12),(28,151,13),(29,152,1),
(29,153,2),(29,154,3),(30,155,1),(30,156,2),(30,157,3),(30,158,4),(30,159,5),(31,160,1),(31,161,2),(31,162,3),(31,163,4),(31,164,5),(31,165,6),(32,166,1),
(32,167,2),(32,168,3),(32,169,4),(33,170,1),(33,171,2),(33,172,3),(34,173,1),(34,174,2),(35,175,1),(35,176,2),(35,177,3),(36,178,1),(36,179,2),(36,180,3),
(36,181,4),(36,182,5),(36,183,6),(37,184,1),(37,185,2),(37,186,3),(37,187,4),(37,188,5),(38,189,1),(38,190,2),(38,191,3),(38,192,4),(38,193,5),(39,194,1),
(39,195,2),(39,196,3),(39,197,4),(40,198,1),(40,199,2),(40,200,3),(40,201,4),(40,202,5),(41,203,1),(41,204,2),(41,205,3),(41,206,4),(41,207,5),(41,208,6),
(42,209,1),(42,210,2),(43,211,1),(43,212,2),(43,213,3),(43,214,4),(43,215,5),(43,216,6),(43,217,7),(44,218,1),(44,219,2),(44,220,3),(44,221,4),(44,222,5),
(45,223,1),(45,224,2),(45,225,3),(45,226,4),(46,227,1),(46,228,2),(46,229,3),(46,230,4),(46,231,5),(47,232,1),(47,233,2),(47,234,3),(47,235,4),(47,236,5),
(47,237,6),(47,238,7),(47,239,8),(47,240,9),(47,241,10),(47,242,11),(48,243,1),(48,244,2),(48,245,3),(48,246,4),(48,247,5),(48,248,6),(48,249,7),(48,250,8),
(48,251,9),(48,252,10),(48,253,11),(49,254,1),(49,255,2),(49,256,3),(50,257,1),(50,258,2),(50,259,3),(51,260,1);

insert into recipe_etiquette(recipe_id,etiq_id) values (1,15),(1,16),(2,14),(2,15),(2,16),(2,18),(3,12),(3,14),(3,15),(3,16),(4,15),(5,14),(5,15),(5,16),(5,18),
(6,15),(7,14),(7,15),(8,12),(8,14),(8,15),(8,16),(9,12),(9,14),(9,15),(9,16),(10,14),(10,15),(10,16),(10,18),(11,14),(11,15),(11,16),(11,18),(12,15),(13,11),
(13,14),(13,15),(13,16),(13,18),(14,12),(14,14),(14,15),(14,16),(15,1),(15,2),(15,4),(15,11),(15,17),(15,19),(16,14),(16,15),(16,16),(16,18),(17,14),(17,15),
(18,15),(19,15),(20,1),(20,2),(20,4),(20,11),(20,15),(20,19),(21,15),(22,1),(22,2),(22,4),(22,11),(22,17),(22,19),(23,1),(23,2),(23,4),(23,11),(23,17),(23,19),
(24,15),(25,11),(25,15),(26,1),(26,2),(26,4),(26,11),(26,17),(26,19),(27,1),(27,2),(27,4),(27,11),(27,19),(28,1),(28,2),(28,4),(28,11),(28,17),(28,19),(29,12),
(29,14),(29,15),(29,16),(30,11),(30,15),(31,15),(32,1),(32,2),(32,4),(32,11),(32,17),(32,19),(33,15),(34,12),(34,14),(34,15),(34,16),(35,11),(35,15),(36,14),
(36,15),(36,16),(36,18),(37,11),(37,12),(37,14),(37,15),(37,16),(38,12),(38,14),(38,15),(38,16),(39,12),(39,14),(39,15),(39,16),(40,15),(41,15),(42,11),(42,14),
(42,15),(42,16),(42,18),(43,1),(43,12),(43,14),(43,15),(43,16),(44,1),(44,2),(44,4),(44,15),(44,19),(45,12),(45,14),(45,15),(45,16),(46,1),(46,12),(46,14),(46,15),
(46,16),(47,15),(48,1),(48,2),(48,4),(48,11),(48,17),(48,19),(49,15),(50,15),(51,5),(51,1),(51,2),(51,19);

insert into recipe_meal_type(recipe_id,mealtype_id) values (1,2),(1,3),(1,4),(2,2),(2,3),(2,4),(3,2),(3,4),(4,2),(4,4),(5,2),(5,3),(5,4),(6,2),(6,4),(7,2),(7,4),
(8,2),(8,3),(8,4),(9,2),(9,3),(9,4),(10,2),(10,3),(10,4),(11,2),(11,3),(11,4),(12,2),(12,4),(13,2),(13,4),(14,2),(14,3),(14,4),(15,1),(15,3),(15,4),(16,2),(16,4),
(17,2),(17,4),(18,2),(18,4),(19,2),(19,4),(20,1),(20,2),(20,3),(20,4),(21,2),(21,4),(22,1),(22,3),(23,1),(23,3),(24,2),(24,4),(25,2),(25,4),(26,1),(26,3),(27,1),
(27,2),(27,3),(27,4),(28,1),(28,3),(28,4),(29,2),(29,3),(29,4),(30,2),(30,4),(31,2),(31,4),(32,1),(32,3),(32,4),(33,2),(33,4),(34,2),(34,4),(35,2),(35,4),(36,2),
(36,3),(36,4),(37,2),(37,4),(38,2),(38,3),(38,4),(39,2),(39,3),(39,4),(40,2),(40,4),(41,2),(41,4),(42,2),(42,3),(42,4),(43,2),(43,4),(44,1),(44,2),(44,3),(44,4),
(45,2),(45,3),(45,4),(46,2),(46,3),(46,4),(47,2),(47,4),(48,1),(48,3),(48,4),(49,2),(49,4),(50,2),(50,4),(51,1),(51,2),(51,3),(51,4);

insert into recipe_tip(recipe_id,tip_id) values (2,1),(2,30),(3,2),(4,3),(5,31),(7,4),(10,5),(12,6),(13,7),(13,9),(14,8),(14,10),(14,18),(15,11),(16,12),(17,13),
(18,14),(19,15),(20,16),(24,17),(25,18),(27,19),(26,20),(30,21),(31,22),(32,23),(34,24),(37,25),(45,28),(46,13),(47,26),(47,29),(49,27);

insert into recipe_thematic_section(recipe_id,themsec_id) values (1, 8),(2, 1),(3, 4),(4, 7),(5, 1),(6, 2),(7, 7),(8, 2),(9, 3),(10, 8),(11, 7),(12, 1),(13, 3),
(14, 4),(15, 8),(16, 8),(17, 8),(18, 3),(19, 2),(20, 2),(21, 4),(22, 6),(23, 4),(24, 8),(25, 1),(26, 7),(27, 3),(28, 3),(29, 8),(30, 2),(31, 4),(32, 6),(33, 4),
(34, 2),(35, 3),(36, 7),(37, 1),(38, 1),(39, 2),(40, 3),(41, 1),(42, 7),(43, 2),(44, 8),(45, 7),(46, 6),(47, 8),(48, 3),(49, 1),(50, 7);

insert into cook(first_name,last_name,phone_number,date_of_birth,years_of_experience,cook_rank) values 
('David','Glover','(043)026-2','1960-11-21',14,'third cook'),('Lexie','Blick','(152)446-5','2004-06-19',1,'third cook'),
('Roma','Howell','(173)033-1','1974-10-25',24,'third cook'),('Dayton','Jacobi','(235)737-2','2002-01-28',3,'third cook'),
('Kyleigh','Cole','(390)377-8','1991-06-27',10,'third cook'),('Rollin','Pfannerstill','(399)926-3','1994-08-01',10,'third cook'),
('Jewel','Gaylord','(419)165-1','1966-07-19',34,'third cook'),('Edward','Fay','(450)755-0','1998-01-22',3,'third cook'),
('Dustin','McClure','(453)777-8','1941-02-21',40,'third cook'),('Maxie','Marvin','(496)044-1','1996-12-06',2,'third cook'),
('Selina','Cassin','(499)460-2','1937-09-18',43,'third cook'),('Nola','Roob','(513)873-0','1999-10-14',0,'third cook'),
('Mckenna','Casper','(539)025-6','1969-08-24',35,'third cook'),('Mollie','Kassulke','(548)882-7','2001-04-15',0,'third cook'),
('Jamil','Balistreri','(596)582-6','1966-10-23',23,'third cook'),('Cristal','Will','(635)083-6','1996-08-15',6,'third cook'),
('Hardy','Cassin','(690)407-8','1939-04-22',42,'third cook'),('Jaquelin','Hills','(706)064-7','1984-03-18',9,'third cook'),
('Buck','Hilpert','(720)548-4','1974-12-16',21,'third cook'),('Sadie','Lowe','(755)719-4','1986-06-30',12,'third cook'),
('Edna','Marks','(767)485-7','1972-02-09',26,'third cook'),('Malcolm','Dare','(791)145-4','2004-09-20',0,'third cook'),
('Devante','Trantow','(881)202-3','1980-09-15',20,'second cook'),('Nicklaus','Mayert','(893)853-6','1995-09-28',10,'second cook'),
('Clement','Torp','+00(6)5890','1983-02-12',20,'second cook'),('Javon','Keebler','+01(6)7220','1991-10-26',8,'second cook'),
('Bailee','Koch','+33(7)5925','1987-10-07',12,'second cook'),('Treva','Kub','+53(2)1004','1968-06-30',30,'second cook'),
('Saul','Mitchell','+61(2)6689','1975-04-07',30,'second cook'),('Clarissa','Walsh','+73(6)7473','1984-05-11',6,'second cook'),
('Billy','Tremblay','+74(2)1941','1996-10-10',3,'second cook'),('April','Jast','+76(5)7600','1999-12-20',2,'second cook'),
('Nathanial','Thompson','+81(4)3213','1996-11-19',5,'second cook'),('Darien','Jerde','+99(8)9550','1984-02-27',8,'second cook'),
('Tyrique','Leuschke','0035011867','1999-05-10',2,'second cook'),('Barry','Runolfsson','010-582-44','2001-03-09',2,'second cook'),
('Lucas','Ferry','0199687248','1979-09-22',17,'second cook'),('Bert','Sanford','0232433941','1987-08-04',10,'second cook'),
('Rashawn','Donnelly','0257836211','1980-02-27',13,'second cook'),('Zakary','Howell','0336393475','1995-08-27',7,'second cook'),
('Napoleon','Lakin','045-544-53','1992-04-25',7,'second cook'),('Noe','Oberbrunner','0512096233','1985-09-16',11,'second cook'),
('Theresa','Barrows','0517246513','1967-09-09',30,'first cook'),('Malachi','Herman','0673780935','1998-01-25',4,'first cook'),
('Modesto','Bartell','0694567920','1955-04-20',30,'first cook'),('Silas','Schiller','0737661717','1992-04-03',7,'first cook'),
('Earlene','Larkin','092.319.45','2001-08-25',3,'first cook'),('Alize','Lockman','096.535.06','2000-01-02',2,'first cook'),
('Shanie','Dickinson','1-003-748-','1979-08-16',20,'first cook'),('Orrin','Predovic','1-043-815-','1981-03-06',14,'first cook'),
('Johnathon','Lindgren','1-051-118-','1981-06-10',20,'first cook'),('Angelo','Reichert','1-121-532-','1988-03-13',10,'first cook'),
('Karen','Abshire','1-231-080-','1983-10-20',15,'first cook'),('Diana','Nicolas','1-302-072-','1994-03-24',4,'first cook'),
('Carrie','Moore','1-314-408-','1969-05-03',16,'first cook'),('Jayson','Trantow','1-433-280-','1999-10-04',3,'first cook'),
('Kristoffer','Mertz','1-487-341-','1988-02-14',11,'first cook'),('Emile','Hettinger','1-497-367-','1991-04-04',5,'first cook'),
('Dianna','McCullough','1-525-235-','1962-11-24',27,'first cook'),('Meaghan','Considine','1-604-583-','1984-11-28',12,'first cook'),
('Regan','Jenkins','1-715-377-','1994-01-29',10,'first cook'),('Kali','Price','1-727-710-','2003-05-10',2,'first cook'),
('Sheila','Herzog','1-764-404-','1995-04-20',10,'assistant chef'),('Logan','Bergnaum','1-873-906-','1952-10-17',43,'assistant chef'),
('Antonietta','Morar','1-895-447-','1993-07-11',10,'assistant chef'),('Savanah','Mohr','1-916-373-','1966-04-17',31,'assistant chef'),
('Maud','Jakubowski','128-899-92','1969-09-26',29,'assistant chef'),('Terrell','Predovic','130-249-16','1992-08-29',4,'assistant chef'),
('Amelie','Towne','137.625.41','1991-04-23',10,'assistant chef'),('Johan','Balistreri','177-691-13','1966-03-07',35,'assistant chef'),
('Demond','Kiehn','179.021.65','1982-01-21',17,'assistant chef'),('Whitney','Runolfsdottir','234-687-89','1980-11-19',11,'assistant chef'),
('Karen','Russel','260-887-34','1997-01-23',5,'assistant chef'),('Ardith','Gulgowski','265.066.33','1980-04-02',5,'assistant chef'),
('Roxanne','Baumbach','271-084-05','1972-12-24',28,'assistant chef'),('Mallory','Ryan','285.174.08','1986-08-29',15,'assistant chef'),
('Gus','Schinner','310-837-99','1955-04-30',42,'assistant chef'),('Collin','Rutherford','357-214-56','1994-10-04',8,'assistant chef'),
('Elmira','Lebsack','396-802-86','1969-12-03',30,'assistant chef'),('Elvie','Satterfield','415.058.71','1982-10-15',16,'assistant chef'),
('Kiara','Dicki','435-472-43','1975-12-19',30,'assistant chef'),('Adonis','Wuckert','444-869-02','1973-11-20',27,'assistant chef'),
('Makayla','Bradtke','453.276.09','1965-11-30',32,'chef'),('Luigi','Bailey','621-285-71','1991-11-22',5,'chef'),
('Chloe','Jacobi','623-939-26','1990-07-12',10,'chef'),('Leila','Rippin','643.733.23','1977-05-13',21,'chef'),
('Christine','Schulist','653.458.48','2002-05-26',2,'chef'),('Nathaniel','Jerde','724.635.62','1973-03-01',20,'chef'),
('Rico','Kris','765.758.74','1972-01-29',21,'chef'),('Haven','Kuhic','777.560.97','1988-03-26',13,'chef'),
('Damaris','Brown','791.756.36','1973-04-11',29,'chef'),('Cassidy','Dietrich','815.696.11','1967-11-01',34,'chef'),
('Annie','Shields','831.686.40','1988-03-02',13,'chef'),('Joany','Reilly','849.217.84','1992-11-16',6,'chef'),
('Brooklyn','Murazik','851-375-61','1972-06-01',25,'chef'),('Micheal','Schultz','861-831-61','1996-09-10',2,'chef'),
('Maybell','Conn','942-061-86','1973-10-28',22,'chef'),('Camren','Collier','950-890-70','1969-11-19',35,'chef'),
('Hank','Osinski','983-341-20','1971-12-07',22,'chef'),('Dallas','Maggio','991-254-86','1974-08-30',6,'chef');

insert into cook_specialization(cook_id,cbc_id) values (1, 34),(2, 56),(3, 56),(4, 56),(5, 63),(6, 48),(6, 30),(7, 3),(7, 48),(8, 70),(8, 56),(9, 34),(9, 3),
(10, 3),(10, 51),(11, 30),(11, 48),(12, 4),(12, 51),(13, 43),(13, 4),(13, 18),(14, 36),(14, 48),(14, 3),(15, 15),(15, 36),(15, 28),(16, 4),(16, 15),(16, 56),
(17, 31),(17, 43),(17, 68),(17, 18),(18, 59),(18, 51),(18, 18),(18, 68),(19, 59),(19, 43),(19, 51),(19, 48),(20, 18),(20, 48),(20, 51),(20, 3),(21, 4),(21, 59),
(21, 56),(21, 28),(22, 28),(22, 30),(22, 3),(22, 56),(23, 30),(23, 56),(23, 43),(23, 34),(23, 51),(24, 51),(24, 70),(24, 56),(24, 34),(24, 28),(25, 18),(25, 30),
(25, 63),(25, 28),(25, 43),(26, 4),(26, 30),(26, 31),(26, 63),(26, 36),(27, 63),(27, 56),(27, 36),(27, 68),(27, 30),(28, 34),(28, 59),(28, 38),(28, 68),(28, 18),
(29, 43),(29, 68),(29, 28),(29, 3),(29, 31),(29, 59),(30, 56),(30, 31),(30, 3),(30, 48),(30, 70),(30, 59),(31, 3),(31, 59),(31, 15),(31, 43),(31, 48),(31, 4),
(32, 30),(32, 38),(32, 68),(32, 33),(32, 48),(32, 51),(33, 38),(33, 43),(33, 28),(33, 68),(33, 36),(33, 51),(34, 63),(34, 34),(34, 51),(34, 31),(34, 43),(34, 3),
(35, 15),(35, 36),(35, 4),(35, 31),(35, 51),(35, 33),(36, 68),(36, 36),(36, 31),(36, 63),(36, 34),(36, 48),(37, 34),(37, 48),(37, 38),(37, 63),(37, 28),(37, 30),
(38, 51),(38, 36),(38, 33),(38, 3),(38, 15),(38, 68),(38, 31),(39, 31),(39, 51),(39, 34),(39, 18),(39, 28),(39, 48),(39, 38),(40, 31),(40, 70),(40, 30),(40, 56),
(40, 28),(40, 38),(40, 48),(41, 38),(41, 48),(41, 31),(41, 30),(41, 68),(41, 43),(41, 4),(41, 51),(42, 43),(42, 30),(42, 59),(42, 33),(42, 31),(42, 48),(42, 56),
(42, 28),(43, 59),(43, 30),(43, 3),(43, 33),(43, 68),(43, 63),(43, 38),(43, 34),(44, 18),(44, 36),(44, 38),(44, 3),(44, 63),(44, 34),(44, 4),(44, 43),(45, 38),
(45, 43),(45, 68),(45, 59),(45, 18),(45, 30),(45, 36),(45, 56),(46, 59),(46, 43),(46, 68),(46, 56),(46, 51),(46, 33),(46, 36),(46, 34),(46, 28),(47, 36),(47, 70),
(47, 68),(47, 18),(47, 48),(47, 28),(47, 38),(47, 3),(47, 4),(48, 48),(48, 15),(48, 33),(48, 28),(48, 36),(48, 51),(48, 59),(48, 38),(48, 70),(49, 70),(49, 56),
(49, 30),(49, 36),(49, 28),(49, 15),(49, 68),(49, 4),(49, 34),(50, 15),(50, 63),(50, 59),(50, 33),(50, 68),(50, 31),(50, 28),(50, 56),(50, 3),(51, 4),(51, 34),
(51, 70),(51, 28),(51, 48),(51, 68),(51, 63),(51, 18),(51, 15),(52, 33),(52, 34),(52, 3),(52, 31),(52, 70),(52, 51),(52, 68),(52, 30),(52, 63),(52, 48),(53, 59),
(53, 63),(53, 36),(53, 38),(53, 43),(53, 56),(53, 3),(53, 15),(53, 33),(53, 18),(54, 63),(54, 33),(54, 36),(54, 70),(54, 3),(54, 68),(54, 28),(54, 34),(54, 18),
(54, 48),(55, 15),(55, 38),(55, 59),(55, 36),(55, 3),(55, 51),(55, 48),(55, 31),(55, 34),(55, 43),(56, 31),(56, 56),(56, 59),(56, 43),(56, 70),(56, 36),(56, 3),
(56, 68),(56, 15),(56, 51),(56, 34),(57, 18),(57, 15),(57, 43),(57, 38),(57, 68),(57, 36),(57, 33),(57, 30),(57, 34),(57, 56),(57, 28),(58, 56),(58, 48),(58, 30),
(58, 68),(58, 3),(58, 33),(58, 51),(58, 28),(58, 43),(58, 59),(58, 15),(59, 18),(59, 68),(59, 51),(59, 28),(59, 33),(59, 4),(59, 56),(59, 36),(59, 38),(59, 63),
(59, 15),(60, 34),(60, 63),(60, 33),(60, 68),(60, 28),(60, 59),(60, 3),(60, 38),(60, 56),(60, 30),(60, 15),(61, 28),(61, 38),(61, 51),(61, 33),(61, 56),(61, 70),
(61, 4),(61, 34),(61, 68),(61, 31),(61, 18),(62, 31),(62, 4),(62, 34),(62, 30),(62, 43),(62, 48),(62, 18),(62, 70),(62, 28),(62, 36),(62, 3),(62, 33),(63, 34),
(63, 18),(63, 59),(63, 4),(63, 15),(63, 51),(63, 31),(63, 70),(63, 38),(63, 28),(63, 68),(63, 36),(64, 15),(64, 43),(64, 34),(64, 3),(64, 59),(64, 4),(64, 70),
(64, 63),(64, 31),(64, 28),(64, 56),(64, 51),(65, 33),(65, 38),(65, 15),(65, 51),(65, 68),(65, 70),(65, 3),(65, 43),(65, 63),(65, 28),(65, 36),(65, 18),(65, 56),
(66, 3),(66, 70),(66, 4),(66, 15),(66, 18),(66, 51),(66, 56),(66, 68),(66, 36),(66, 33),(66, 34),(66, 30),(66, 63),(67, 56),(67, 43),(67, 3),(67, 70),(67, 28),
(67, 4),(67, 18),(67, 34),(67, 31),(67, 36),(67, 68),(67, 15),(67, 48),(68, 30),(68, 31),(68, 48),(68, 51),(68, 15),(68, 38),(68, 68),(68, 34),(68, 4),(68, 59),
(68, 3),(68, 56),(68, 33),(69, 15),(69, 34),(69, 30),(69, 56),(69, 59),(69, 63),(69, 70),(69, 36),(69, 38),(69, 3),(69, 43),(69, 51),(69, 68),(70, 15),(70, 56),
(70, 48),(70, 18),(70, 4),(70, 68),(70, 51),(70, 63),(70, 38),(70, 28),(70, 33),(70, 43),(70, 34),(71, 3),(71, 68),(71, 34),(71, 48),(71, 18),(71, 28),(71, 56),
(71, 30),(71, 38),(71, 63),(71, 36),(71, 43),(71, 33),(72, 4),(72, 28),(72, 18),(72, 63),(72, 59),(72, 38),(72, 3),(72, 34),(72, 33),(72, 48),(72, 15),(72, 36),
(72, 56),(73, 38),(73, 31),(73, 48),(73, 70),(73, 4),(73, 28),(73, 30),(73, 51),(73, 3),(73, 18),(73, 36),(73, 63),(73, 33),(73, 43),(74, 4),(74, 43),(74, 34),
(74, 15),(74, 36),(74, 33),(74, 38),(74, 3),(74, 70),(74, 59),(74, 63),(74, 30),(74, 31),(74, 51),(75, 15),(75, 59),(75, 70),(75, 43),(75, 36),(75, 4),(75, 34),
(75, 38),(75, 18),(75, 68),(75, 33),(75, 51),(75, 56),(75, 63),(76, 51),(76, 4),(76, 38),(76, 31),(76, 68),(76, 63),(76, 30),(76, 18),(76, 33),(76, 34),(76, 59),
(76, 70),(76, 3),(76, 36),(77, 18),(77, 30),(77, 63),(77, 33),(77, 68),(77, 4),(77, 70),(77, 3),(77, 34),(77, 56),(77, 15),(77, 51),(77, 31),(77, 36),(78, 36),
(78, 3),(78, 70),(78, 43),(78, 63),(78, 59),(78, 18),(78, 34),(78, 30),(78, 51),(78, 33),(78, 31),(78, 4),(78, 28),(78, 68),(79, 4),(79, 56),(79, 59),(79, 15),
(79, 70),(79, 51),(79, 63),(79, 36),(79, 68),(79, 28),(79, 48),(79, 3),(79, 38),(79, 43),(79, 34),(80, 36),(80, 51),(80, 34),(80, 18),(80, 63),(80, 15),(80, 43),
(80, 3),(80, 48),(80, 38),(80, 56),(80, 33),(80, 59),(80, 4),(80, 68),(81, 28),(81, 4),(81, 70),(81, 33),(81, 68),(81, 38),(81, 48),(81, 15),(81, 31),(81, 51),
(81, 3),(81, 30),(81, 18),(81, 59),(81, 36),(82, 68),(82, 30),(82, 48),(82, 38),(82, 18),(82, 15),(82, 59),(82, 70),(82, 33),(82, 43),(82, 63),(82, 56),(82, 34),
(82, 28),(82, 36),(83, 51),(83, 33),(83, 38),(83, 4),(83, 36),(83, 28),(83, 18),(83, 43),(83, 70),(83, 63),(83, 48),(83, 34),(83, 31),(83, 3),(83, 59),(84, 31),
(84, 51),(84, 28),(84, 33),(84, 34),(84, 63),(84, 36),(84, 38),(84, 30),(84, 15),(84, 3),(84, 48),(84, 56),(84, 68),(84, 43),(85, 38),(85, 70),(85, 15),(85, 33),
(85, 51),(85, 18),(85, 34),(85, 56),(85, 28),(85, 30),(85, 68),(85, 36),(85, 43),(85, 3),(85, 63),(85, 31),(86, 4),(86, 3),(86, 43),(86, 38),(86, 34),(86, 36),
(86, 28),(86, 48),(86, 70),(86, 68),(86, 18),(86, 59),(86, 30),(86, 51),(86, 33),(86, 63),(87, 56),(87, 38),(87, 28),(87, 51),(87, 68),(87, 30),(87, 63),(87, 4),
(87, 43),(87, 59),(87, 34),(87, 15),(87, 36),(87, 48),(87, 70),(87, 18),(88, 63),(88, 4),(88, 33),(88, 15),(88, 31),(88, 70),(88, 34),(88, 56),(88, 36),(88, 51),
(88, 59),(88, 48),(88, 18),(88, 38),(88, 68),(88, 30),(89, 63),(89, 51),(89, 70),(89, 4),(89, 30),(89, 68),(89, 18),(89, 59),(89, 43),(89, 38),(89, 33),(89, 28),
(89, 31),(89, 34),(89, 36),(89, 3),(90, 56),(90, 59),(90, 68),(90, 31),(90, 18),(90, 36),(90, 70),(90, 3),(90, 30),(90, 43),(90, 48),(90, 51),(90, 4),(90, 28),
(90, 34),(90, 15),(91, 34),(91, 3),(91, 15),(91, 31),(91, 4),(91, 28),(91, 68),(91, 43),(91, 30),(91, 48),(91, 63),(91, 59),(91, 18),(91, 38),(91, 56),(91, 36),
(92, 33),(92, 51),(92, 18),(92, 38),(92, 36),(92, 56),(92, 63),(92, 68),(92, 3),(92, 48),(92, 4),(92, 31),(92, 59),(92, 30),(92, 70),(92, 34),(93, 51),(93, 34),
(93, 70),(93, 36),(93, 33),(93, 15),(93, 68),(93, 31),(93, 30),(93, 3),(93, 43),(93, 28),(93, 4),(93, 48),(93, 59),(93, 56),(93, 18),(94, 59),(94, 70),(94, 31),
(94, 33),(94, 43),(94, 4),(94, 28),(94, 48),(94, 68),(94, 38),(94, 51),(94, 34),(94, 63),(94, 15),(94, 36),(94, 30),(94, 3),(95, 30),(95, 38),(95, 31),(95, 70),
(95, 4),(95, 3),(95, 63),(95, 36),(95, 56),(95, 59),(95, 51),(95, 18),(95, 48),(95, 68),(95, 15),(95, 33),(95, 28),(95, 34),(96, 34),(96, 70),(96, 36),(96, 68),
(96, 38),(96, 18),(96, 59),(96, 48),(96, 28),(96, 63),(96, 51),(96, 43),(96, 4),(96, 30),(96, 56),(96, 31),(96, 15),(96, 3),(97, 56),(97, 68),(97, 38),(97, 51),
(97, 18),(97, 28),(97, 48),(97, 36),(97, 31),(97, 4),(97, 34),(97, 59),(97, 15),(97, 30),(97, 70),(97, 63),(97, 43),(97, 3),(97, 33),(98, 51),(98, 59),(98, 31),
(98, 30),(98, 70),(98, 3),(98, 28),(98, 33),(98, 48),(98, 4),(98, 56),(98, 34),(98, 36),(98, 15),(98, 38),(98, 63),(98, 18),(98, 68),(98, 43),(99, 18),(99, 68),
(99, 51),(99, 28),(99, 43),(99, 70),(99, 4),(99, 15),(99, 63),(99, 56),(99, 31),(99, 38),(99, 3),(99, 33),(99, 48),(99, 59),(99, 30),(99, 36),(99, 34),(100, 31),
(100, 18),(100, 63),(100, 33),(100, 34),(100, 4),(100, 15),(100, 51),(100, 28),(100, 36),(100, 3),(100, 68),(100, 70),(100, 59),(100, 30),(100, 48),(100, 38),
(100, 56),(100, 43);

insert into season(season_number,year) values (1,2024),(2,2025),(3,2026),(4,2027),(5,2028),(6,2029);

insert into episode(episode_id,episode_number,season_id) values (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,1,2),
(12,2,2),(13,3,2),(14,4,2),(15,5,2),(16,6,2),(17,7,2),(18,8,2),(19,9,2),(20,10,2),(21,1,3),(22,2,3),(23,3,3),(24,4,3),(25,5,3),(26,6,3),(27,7,3),(28,8,3),
(29,9,3),(30,10,3),(31,1,4),(32,2,4),(33,3,4),(34,4,4),(35,5,4),(36,6,4),(37,7,4),(38,8,4),(39,9,4),(40,10,4),(41,1,5),(42,2,5),(43,3,5),(44,4,5),(45,5,5),
(46,6,5),(47,7,5),(48,8,5),(49,9,5),(50,10,5),(51,1,6),(52,2,6),(53,3,6),(54,4,6),(55,5,6),(56,6,6),(57,7,6),(58,8,6),(59,9,6),(60,10,6);


/*Create views*/

create view recipe_cook as select cook_id,recipe_id,recipe.cbc_id 
						   from cook_specialization join recipe on cook_specialization.cbc_id=recipe.cbc_id 
                           order by cook_id,cbc_id,recipe_id;

/*Create procedure to generate episodes and seasons*/
                           
delimiter $$
create procedure `generate_episodes`(in season_id int)
begin
    
    declare episode_count int;
    declare r_episode_count int;
    declare r_episode_id int;
    declare r_cbc_id int;
    declare r_cook_id int;
    declare r_recipe_id int;
    declare r_judge_id int;
    declare r_judge_score int;
    declare r_participant_score_id int;
    declare i int;
    declare j int;
    declare k int;
    declare a int;
    declare aa int;
    declare b int;
    declare bb int;
    declare c int;
    declare cc int;

	drop table if exists temp_country;
	drop table if exists temp_cooks;
	drop table if exists temp_recipe;

    -- Temporary tables to track usage counts
    create temporary table temp_country(cbc_id int(7),usage_count int default 0);
    create temporary table temp_cooks(cook_id int(7),usage_count int default 0);
    create temporary table temp_recipe(recipe_id int(7),usage_count int default 0);

    -- initialize usage counts
    insert into temp_country(cbc_id) select distinct recipe.cbc_id from cuisine_by_country 
									 join recipe where cuisine_by_country.cbc_id=recipe.cbc_id; 
    insert into temp_cooks(cook_id) select distinct cook_id from cook_specialization 
									where cbc_id in (select cbc_id from temp_country);
    insert into temp_recipe(recipe_id) select distinct recipe_id from recipe_cook;

    
		set episode_count=(select count(episode_id) from episode where season_id=r_season_id);
		set r_episode_count=1;

		while (r_episode_count<episode_count+1)
			do
				set r_episode_id=(select episode_id from episode where season_id=r_season_id and episode_number=r_episode_count);
				set i=1;
				-- select 10 countries, 10 participants and 10 recipes for the episode
				while (i<11)
					do	
						-- select a country
						select distinct cbc_id into r_cbc_id from temp_country 
						where cbc_id not in (select cbc_id from episode_cook_participant where episode_id=r_episode_id) and usage_count<3
						order by rand() limit 1;
                            
						-- select a cook participant
						select cook_id into r_cook_id from temp_cooks 
						where cook_id not in (select cook_id from episode_cook_participant where episode_id=r_episode_id) and usage_count<3
						order by rand() limit 1;

						-- select a recipe
						select recipe_id into r_recipe_id from temp_recipe 
						where recipe_id not in (select recipe_id from episode_cook_participant where episode_id=r_episode_id) and usage_count<3
						order by rand() limit 1;
							
						-- insert the participant with his/her recipe
						insert into episode_cook_participant(episode_id,cook_id,cbc_id,recipe_id) values (r_episode_id,r_cook_id,r_cbc_id,r_recipe_id);
							
						update temp_country set usage_count=usage_count+1 where cbc_id=r_cbc_id;
						update temp_cooks set usage_count=usage_count+1 where cook_id=r_cook_id;
						update temp_recipe set usage_count=usage_count+1 where recipe_id=r_recipe_id;
							
						-- go to the next participant
						set i=i+1;
				end while;
					
				set j=1;
				-- select 3 judges for the episode
				while (j<4)
					do
						-- select a cook judge
						select cook_id into r_judge_id from temp_cooks 
						where cook_id in 
						(select temp_cooks.cook_id from temp_cooks where
						temp_cooks.cook_id not in (select cook_id from episode_cook_judge where episode_id=r_episode_id) 
						and temp_cooks.cook_id not in (select cook_id from episode_cook_participant where episode_id=r_episode_id))
						and usage_count<3
						order by rand() limit 1;
							
						set k=1;
						-- set the score from each judge to each participant
						while(k<11)
							do
								-- pick a score
								select FLOOR(RAND()*(5-1+1))+1 into r_judge_score;
									
								-- insert the jude with his/her score for the participant
								insert into episode_cook_judge(episode_id,cook_id,ecp_id,judge_score) 
								values (r_episode_id,r_judge_id,10*(r_episode_id-1)+k,r_judge_score);
									
								-- go to the next participant
								set k=k+1;
						end while;
									
						update temp_cooks set usage_count=usage_count+1 where cook_id=r_judge_id;        
							
						-- go to the next judge
						set j=j+1;
				end while;
                    
				if(r_episode_id>1)
					then
						set a=(select count(usage_count) from temp_country 
								where cbc_id in (select cbc_id from episode_cook_participant where episode_id=r_episode_id-1)
								and cbc_id not in(select cbc_id from episode_cook_participant where episode_id=r_episode_id));
						set b=(select count(usage_count) from temp_cooks 
								where cook_id in (select cbc_id from episode_cook_participant where episode_id=r_episode_id-1)
								and cook_id not in (select cbc_id from episode_cook_participant where episode_id=r_episode_id));
						set c=(select count(usage_count) from temp_recipe 
								where recipe_id in (select cbc_id from episode_cook_participant where episode_id=r_episode_id-1)
								and recipe_id not in (select cbc_id from episode_cook_participant where episode_id=r_episode_id));
						set aa=1;
						set bb=1;
						set cc=1;
						-- check if a cuisine was used for the last episode but not this one
						if(a>0)
							then
								while(aa<a+1)
									do
										update temp_country set usage_count=0 
										where cbc_id in (select cbc_id from episode_cook_participant where episode_id=r_episode_id-1)
										and cbc_id not in (select cbc_id from episode_cook_participant where episode_id=r_episode_id);
										set aa=aa+1;
								end while;
						end if;
						-- check if a cook was used for the last episode but not this one
						if(b>0)
							then
								while(bb<b+1)
									do
										update temp_cooks set usage_count=0 
										where cook_id in (select cook_id from episode_cook_participant where episode_id=r_episode_id-1)
										and cook_id not in (select cook_id from episode_cook_participant where episode_id=r_episode_id);
										set bb=bb+1;
								end while;
						end if;
						-- check if a recipe was used for the last episode but not this one
						if(c>0)
							then
								while(cc<c+1)
									do
										update temp_recipe set usage_count=0 
										where recipe_id in (select recipe_id from episode_cook_participant where episode_id=r_episode_id-1)
										and recipe_id not in (select recipe_id from episode_cook_participant where episode_id=r_episode_id);
										set cc=cc+1;
								end while;
						end if;
                            
				end if;
                    
				-- go to the next episode
				set r_episode_count=r_episode_count+1;
		end while;
    
end $$;

delimiter ;

call generate_episodes(1);
call generate_episodes(2);
call generate_episodes(3);
call generate_episodes(4);
call generate_episodes(5);
call generate_episodes(6);