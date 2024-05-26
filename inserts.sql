USE cooking;

INSERT INTO national_cuisine (cuisine_name) VALUES
('Latin American'),
('Italian'),
('French'),
('Chinese'),
('Indian'),
('Mexican'),
('Japanese'),
('Thai'),
('Greek'),
('Spanish'),
('Lebanese'),
('Vietnamese'),
('American'),
('Brazilian'),
('Korean'),
('Ethiopian'),
('Moroccan'),
('Israeli'),
('Turkish'),
('Russian');

INSERT INTO food_groups (group_name, group_description) VALUES
('Vegetables', 'A vegetable is the edible portion of a plant.'),
('Fruits', 'A fruit is a mature, ripened ovary, along with the contents of the ovary.'),
('Cereal and Potatoes', 'Cereals and potatoes group includes pasta, bread and bakery products, rice, barley, corn, as well as other minor cereals and tubers such as sweet potatoes and topinambur.'),
('Milk and Dairy Products', 'Dairy products or milk products, also known as lacticinia, are food products made from (or containing) milk.'),
('Legumes', 'A legume refers to any plant from the Fabaceae family that would include its leaves, stems, and pods. A pulse is the edible seed from a legume plant. Pulses include beans, lentils, and peas.'),
('Red Meat', 'Red meat refers to fresh unprocessed mammalian muscle meat (e.g. beef, veal, pork, lamb, mutton, horse, or goat meat), which may be minced or frozen, and is usually consumed cooked.'),
('White Meat', 'In culinary terms, white meat is meat which is pale in color before and after cooking.'),
('Eggs', 'Bird and reptile eggs consist of a protective eggshell, albumen (egg white), and vitellus (egg yolk), contained within various thin membranes.'),
('Fish and Seafood', 'Seafood encompasses all commercially obtained freshwater and saltwater fish, molluscan shellfish, and crustaceans.'),
('Added fats and oils, olives and nuts', 'This group includes added fats and oils such as butter, margarine, olive oil, and nut oils, as well as olives and various types of nuts.');

INSERT INTO ingredients (ingredient_name, calories_per_gram, group_name) VALUES
('Spaghetti', 3.0, 'Cereal and Potatoes'),
('Egg', 2.0, 'Eggs'),
('Parmesan cheese', 4.0, 'Milk and Dairy Products'),
('Bacon', 5.0, 'Red Meat'),
('Chicken', 3.0, 'White Meat'),
('Red wine', 3.0, 'Added fats and oils, olives and nuts'),
('Onion', 1.0, 'Vegetables'),
('Carrots', 1.0, 'Vegetables'),
('Peanuts', 6.0, 'Added fats and oils, olives and nuts'),
('Bell peppers', 1.0, 'Vegetables'),
('Green onions', 1.0, 'Vegetables'),
('Tomato sauce', 2.0, 'Vegetables'),
('Yogurt', 3.0, 'Milk and Dairy Products'),
('Ginger garlic paste', 2.0, 'Vegetables'),
('Pork', 3.0, 'White Meat'),
('Pineapple', 3.0, 'Fruits'),
('Cilantro', 0.4, 'Vegetables'),
('Nori (seaweed)', 2.0, 'Fish and Seafood'),
('Avocado', 4.0, 'Fruits'),
('Cucumber', 1.0, 'Vegetables'),
('Shrimp', 2.5, 'Fish and Seafood'),
('Lemongrass', 1.0, 'Vegetables'),
('Mushrooms', 1.0, 'Vegetables'),
('Thai chilies', 1.0, 'Vegetables'),
('Feta cheese', 4.0, 'Milk and Dairy Products'),
('Kalamata olives', 5.0, 'Added fats and oils, olives and nuts'),
('Rice', 1.0, 'Cereal and Potatoes'),
('Saffron', 3.0, 'Added fats and oils, olives and nuts'),
('Chickpeas', 3.0, 'Legumes'),
('Tahini', 6.0, 'Added fats and oils, olives and nuts'),
('Lemon juice', 1.0, 'Fruits'),
('Garlic', 0.5, 'Vegetables'),
('Pizza dough', 3.0, 'Cereal and Potatoes'),
('Mozzarella cheese', 4.0, 'Milk and Dairy Products'),
('Fresh basil', 1.0, 'Vegetables'),
('Tomatoes', 2.0, 'Vegetables'),
('Beef', 2.5, 'Red Meat'),
('Beef broth', 3.0, 'Red Meat'),
('Tofu', 2.0, 'Legumes'),
('Ground pork', 4.0, 'White Meat'),
('Sichuan peppercorns', 6.0, 'Added fats and oils, olives and nuts'),
('Ground lamb', 5.0, 'Red Meat'),
('Basmati rice', 2.0, 'Cereal and Potatoes'),
('Garam masala', 3.0, 'Added fats and oils, olives and nuts'),
('Red onion', 1.0, 'Vegetables'),
('Lime juice', 1.0, 'Fruits'),
('Seafood', 4.0, 'Fish and Seafood'),
('Tempura batter', 4.0, 'Added fats and oils, olives and nuts'),
('Noodles', 3.0, 'Cereal and Potatoes'),
('Bean sprouts', 1.0, 'Vegetables'),
('Tamarind paste', 2.0, 'Fruits'),
('Eggplant', 2.0, 'Vegetables'),
('Zucchini', 1.0, 'Vegetables'),
('Duck', 5.0, 'White Meat'),
('Hoisin sauce', 3.0, 'Added fats and oils, olives and nuts'),
('Spinach', 1.0, 'Vegetables'),
('Paneer cheese', 4.0, 'Milk and Dairy Products'),
('Poblano peppers', 1.0, 'Vegetables'),
('Walnuts', 6.0, 'Added fats and oils, olives and nuts'),
('Pomegranate seeds', 1.0, 'Fruits'),
('Apple', 0.5, 'Fruits'),
('Fish', 4.0, 'Fish and Seafood'),
('Wasabi', 1.0, 'Vegetables'),
('Pickled ginger', 1.0, 'Vegetables'),
('Coconut milk', 5.0, 'Milk and Dairy Products'),
('Galangal', 1.0, 'Vegetables'),
('Kaffir lime leaves', 1.0, 'Vegetables'),
('Grape leaves', 1.0, 'Vegetables'),
('Dill', 1.0, 'Vegetables'),
('Mixed greens', 1.0, 'Vegetables'),
('Pita chips', 3.0, 'Cereal and Potatoes'),
('Radishes', 1.0, 'Vegetables'),
('Sumac', 1.0, 'Vegetables'),
('Beer', 4.0, 'Added fats and oils, olives and nuts'),
('Brown sugar', 4.0, 'Added fats and oils, olives and nuts'),
('Mustard', 2.0, 'Added fats and oils, olives and nuts'),
('Thyme', 1.0, 'Vegetables'),
('Ladyfingers', 3.0, 'Cereal and Potatoes'),
('Mascarpone cheese', 4.0, 'Milk and Dairy Products'),
('Cocoa powder', 3.0, 'Added fats and oils, olives and nuts'),
('Espresso', 1.0, 'Vegetables'),
('Marsala wine', 3.0, 'Added fats and oils, olives and nuts'),
('Milk', 1.0, 'Milk and Dairy Products'),
('Flour', 1.0, 'Cereal and Potatoes'),
('Oranges', 0.5, 'Fruits'),
('Grand Marnier', 4.0, 'Added fats and oils, olives and nuts'),
('Butter', 7.0, 'Added fats and oils, olives and nuts'),
('Cream', 5.0, 'Milk and Dairy Products'),
('Kashmiri chili powder', 3.0, 'Added fats and oils, olives and nuts'),
('Kasuri methi (dried fenugreek leaves)', 2.0, 'Vegetables'),
('Tortillas', 3.0, 'Cereal and Potatoes'),
('Cheese', 4.0, 'Milk and Dairy Products'),
('Enchilada sauce', 2.0, 'Vegetables'),
('Black olives', 5.0, 'Added fats and oils, olives and nuts'),
('Green chilies', 1.0, 'Vegetables'),
('Black beans', 3.0, 'Legumes'),
('Rice vinegar', 3.0, 'Added fats and oils, olives and nuts'),
('Green curry paste', 3.0, 'Added fats and oils, olives and nuts'),
('Thai basil', 1.0, 'Vegetables'),
('Phyllo dough', 3.0, 'Cereal and Potatoes'),
('Nutmeg', 1.0, 'Vegetables'),
('Baguette', 2.0, 'Cereal and Potatoes'),
('Pickled Carrots', 0.6, 'Vegetables'),
('Rice Paper', 1.0, 'Cereal and Potatoes'),
('Vermicelli Noodles', 1.2, 'Cereal and Potatoes'),
('Mint', 0.3, 'Vegetables'),
('Potatoes', 0.8, 'Cereal and Potatoes'),
('Apples', 0.5, 'Fruits'),
('BBQ Sauce', 2.0, 'Added fats and oils, olives and nuts'),
('Chorizo', 3.0, 'Red Meat'),
('Tapioca Flour', 1.2, 'Cereal and Potatoes'),
('Condensed Milk', 3.5, 'Milk and Dairy Products'),
('Chocolate Sprinkles', 4.0, 'Added fats and oils, olives and nuts'),
('Napa Cabbage', 0.4, 'Vegetables'),
('Carrot', 0.5, 'Vegetables'),
('Soy Sauce', 1.5, 'Added fats and oils, olives and nuts'),
('Teff Flour', 1.2, 'Cereal and Potatoes'),
('Clarified Butter', 7.0, 'Added fats and oils, olives and nuts'),
('Veal', 2.0, 'Red Meat'),
('Paneer', 2.0, 'Milk and Dairy Products'),
('Lamb', 2.0, 'Red Meat'),
('Cabbage', 0.25, 'Vegetables'),
('Parsley', 0.36, 'Vegetables'),
('Pasta', 3.5, 'Cereal and Potatoes'),
('Pork Ribs', 3.0, 'Red Meat'),
('Potato', 0.77, 'Cereal and Potatoes'),
('Tomato', 0.18, 'Vegetables'),
('Vegetables', 0.35, 'Vegetables'),
('Olive Oil', 9, 'Added fats and oils, olives and nuts'),
('Turmeric', 0, NULL),
('Paprika', 0, NULL);



INSERT INTO equipment (equipment_name, instructions)
VALUES
('Spatula', 'Use for flipping and stirring foods.'),
('Stock Pot', 'Use for cooking large batches of soup or broth.'),
('Strainer', 'Use for straining solids from liquids.'),
('Chopsticks', 'Use for picking up food, especially in Asian cuisine.'),
('Soup Spoons', 'Use for serving and eating soup.'),
('Baking Sheet', 'Use for baking items in the oven.'),
('Knife', 'Use for chopping and slicing ingredients.'),
('Cutting Board', 'Use as a surface for chopping ingredients.'),
('Dutch Oven', 'Use for braising, roasting, and stewing.'),
('Serving Plate', 'Use for presenting finished dishes.'),
('Mixing Bowl', 'Use for combining ingredients.'),
('Rolling Pin', 'Use for rolling out dough.'),
('Pie Pan', 'Use for baking pies.'),
('Grill', 'Use for grilling meats and vegetables.'),
('Tongs', 'Use for handling hot foods.'),
('Mixing Spoon', 'Use for stirring and mixing ingredients.'),
('Wok', 'Use for stir-frying and deep frying.'),
('Rice Cooker', 'Use for cooking rice.'),
('Griddle', 'Use for cooking pancakes, eggs, and other flat items.'),
('Bamboo Mat', 'Use for rolling sushi.'),
('Sharp Knife', 'Use for precision cutting and slicing.'),
('Food Processor', 'Use for chopping, slicing, and pureeing ingredients.'),
('Oven', 'Use for baking and roasting.'),
('Paella Pan', 'Use for cooking paella and similar dishes.'),
('Deep Fryer', 'Use for deep frying foods.'),
('Baking Dish', 'Use for baking casseroles and similar dishes.'),
('Blender', 'Use for blending and pureeing ingredients.'),
('Fork', 'Use for mixing and mashing ingredients.'),
('Whisk', 'Use for beating and whipping ingredients.'),
('Crepe Pan', 'Use for making crepes.'),
('Roasting Pan', 'Use for roasting meats and vegetables.'),
('Frying Pan', 'Use for frying and sautéing.'),
('Large Pot', 'Use for cooking large batches of food or boiling water.'),
('Saucepan', 'Use for cooking sauces, soups, and boiling small quantities of food.');

INSERT INTO recipes (recipe_name, short_desc, difficulty_level, prep_time, cooking_time, quantities, main_ingredient, tip1, tip2, tip3)
VALUES
('Spaghetti Carbonara', 'Classic Italian pasta dish', '3', '00:15:00', '00:20:00', 4, 'Spaghetti', 'Use fresh eggs', 'Keep in fridge for up to 3 days', NULL),
('Coq au Vin', 'Classic French chicken dish', '4', '00:20:00', '01:30:00', 6, 'Chicken', 'Marinate overnight for best flavor', 'Use a good quality red wine', NULL),
('Kung Pao Chicken', 'Popular Chinese stir-fry dish', '3', '00:15:00', '00:20:00', 4, 'Chicken', 'Prepare all ingredients before cooking', NULL, NULL),
('Chicken Tikka Masala', 'Iconic Indian curry dish', '3', '00:30:00', '00:30:00', 4, 'Chicken', 'Marinate chicken for at least 2 hours', NULL, NULL),
('Tacos al Pastor', 'Traditional Mexican street food', '2', '00:20:00', '00:30:00', 6, 'Pork', 'Use fresh pineapple for best taste', 'Grill meat for authentic flavor', NULL),
('Sushi Rolls', 'Japanese sushi rolls', '3', '00:45:00', '00:30:00', 4, 'Rice', 'Use sushi-grade fish', 'Keep hands wet to prevent sticking', NULL),
('Tom Yum Soup', 'Classic Thai spicy soup', '2', '00:15:00', '00:20:00', 4, 'Shrimp', 'Use fresh herbs for better flavor', NULL, NULL),
('Greek Salad', 'Traditional Greek salad', '1', '00:10:00', '00:00:00', 2, 'Tomato', 'Use fresh and ripe tomatoes', 'Add olives for extra flavor', NULL),
('Paella', 'Traditional Spanish rice dish', '4', '00:20:00', '00:30:00', 6, 'Rice', 'Use saffron for authentic taste', 'Cook rice evenly for best texture', 'Serve with lemon wedges'),
('Hummus', 'Classic Lebanese dip', '1', '00:10:00', '00:00:00', 4, 'Chickpeas', 'Use fresh lemon juice', 'Add a pinch of cumin for extra flavor', NULL),
('Margherita Pizza', 'Classic Italian pizza with tomato, mozzarella, and basil', '2', '00:20:00', '00:15:00', 4, 'Pizza dough', 'Use fresh basil leaves', 'Bake on a pizza stone for best results', NULL),
('Beef Bourguignon', 'French beef stew cooked in red wine', '4', '00:30:00', '02:30:00', 6, 'Beef', 'Use a good quality red wine', 'Cook slowly for tender meat', 'Serve with crusty bread'),
('Mapo Tofu', 'Spicy Chinese tofu dish with minced meat', '3', '00:20:00', '00:20:00', 4, 'Tofu', 'Use soft tofu for best texture', NULL, NULL),
('Chicken Biryani', 'Fragrant Indian rice dish with chicken and spices', '4', '00:30:00', '01:00:00', 6, 'Chicken', 'Marinate chicken for better flavor', 'Use basmati rice for best results', NULL),
('Guacamole', 'Mexican avocado dip with tomatoes and lime', '1', '00:15:00', '00:00:00', 4, 'Avocado', 'Use ripe avocados', 'Add lime juice to prevent browning', NULL),
('Tempura', 'Japanese deep-fried seafood and vegetables', '3', '00:20:00', '00:10:00', 4, 'Seafood', 'Use ice-cold batter for crispiness', 'Fry in small batches', NULL),
('Pad Thai', 'Classic Thai stir-fried noodle dish with shrimp', '3', '00:20:00', '00:15:00', 4, 'Noodles', 'Use tamarind paste for authentic taste', 'Add peanuts for extra crunch', NULL),
('Moussaka', 'Greek eggplant and lamb casserole with bechamel sauce', '4', '00:30:00', '01:00:00', 6, 'Eggplant', 'Let it rest before serving', NULL, NULL),
('Gazpacho', 'Traditional Spanish cold tomato soup', '1', '00:15:00', '00:00:00', 4, 'Tomato', 'Serve chilled', NULL, NULL),
('Falafel', 'Lebanese fried chickpea patties', '2', '00:20:00', '00:20:00', 4, 'Chickpeas', 'Use dried chickpeas soaked overnight', 'Add fresh herbs for better flavor', NULL),
('Lasagna', 'Classic Italian layered pasta dish with meat and cheese', '4', '00:30:00', '01:00:00', 6, 'Pasta', 'Use ricotta cheese for creaminess', 'Let it rest before serving', NULL),
('Ratatouille', 'French vegetable stew with tomatoes, eggplant, and zucchini', '3', '00:20:00', '00:40:00', 4, 'Vegetables', 'Use fresh vegetables', 'Serve with crusty bread', NULL),
('Peking Duck', 'Chinese roast duck dish with crispy skin', '5', '00:30:00', '02:00:00', 6, 'Duck', 'Air-dry duck for crispy skin', 'Serve with hoisin sauce', NULL),
('Palak Paneer', 'Indian spinach curry with paneer cheese', '3', '00:20:00', '00:30:00', 4, 'Spinach', 'Use fresh spinach', 'Add cream for richness', NULL),
('Chiles en Nogada', 'Mexican stuffed poblano peppers with walnut sauce', '4', '00:30:00', '00:45:00', 6, 'Poblano peppers', 'Use fresh pomegranates for garnish', 'Serve at room temperature', 'Use roasted walnuts for the sauce'),
('Sashimi', 'Japanese sliced raw fish dish', '3', '00:30:00', '00:00:00', 4, 'Fish', 'Use sushi-grade fish', 'Serve with soy sauce and wasabi', NULL),
('Tom Kha Gai', 'Thai coconut chicken soup with lemongrass and galangal', '2', '00:20:00', '00:20:00', 4, 'Chicken', 'Use fresh herbs for best flavor', NULL, NULL),
('Dolmades', 'Greek stuffed grape leaves with rice and herbs', '3', '00:30:00', '00:45:00', 6, 'Grape leaves', 'Use fresh grape leaves', 'Serve with lemon wedges', 'Add fresh dill for extra flavor'),
('Fattoush', 'Lebanese salad with mixed greens, vegetables, and pita chips', '2', '00:15:00', '00:00:00', 4, 'Mixed greens', 'Use toasted pita chips', 'Add sumac for extra tang', NULL),
('Carbonnade Flamande', 'Belgian beef and beer stew', '4', '00:30:00', '02:00:00', 6, 'Beef', 'Use Belgian beer for authenticity', 'Cook slowly for tender meat', NULL),
('Tiramisu', 'Classic Italian dessert with coffee-soaked ladyfingers and mascarpone', '2', '00:30:00', '00:00:00', 6, 'Ladyfingers', 'Use strong espresso', 'Chill overnight for best flavor', NULL),
('Crepes Suzette', 'French thin pancakes with orange sauce and Grand Marnier', '3', '00:15:00', '00:15:00', 4, 'Flour', 'Use fresh orange juice', 'Flambe with Grand Marnier', NULL),
('Kung Pao Shrimp', 'Chinese stir-fried shrimp dish with peanuts and chili peppers', '3', '00:15:00', '00:15:00', 4, 'Shrimp', 'Prepare all ingredients before cooking', 'Adjust spice level to taste', NULL),
('Butter Chicken', 'Indian creamy tomato-based chicken curry', '3', '00:20:00', '00:30:00', 4, 'Chicken', 'Marinate chicken for better flavor', 'Use fresh cream for richness', NULL),
('Enchiladas', 'Mexican rolled tortillas stuffed with meat and cheese, topped with sauce', '3', '00:20:00', '00:30:00', 4, 'Tortillas', 'Use fresh tortillas', 'Top with cheese and bake until bubbly', NULL),
('Tempura Vegetables', 'Japanese deep-fried battered vegetables', '2', '00:20:00', '00:10:00', 4, 'Vegetables', 'Use ice-cold batter for crispiness', 'Serve with tempura dipping sauce', NULL),
('Shakshuka', 'Middle Eastern poached eggs in spicy tomato sauce', '2', '00:15:00', '00:15:00', 4, 'Tomato', 'Use fresh tomatoes', 'Top with crumbled feta', NULL),
('Lamb Tagine', 'Moroccan slow-cooked lamb stew with spices and dried fruits', '4', '00:20:00', '02:00:00', 6, 'Lamb', 'Use a tagine pot for best results', 'Cook slowly for tender meat', 'Serve with couscous'),
('Tortilla Española', 'Spanish potato omelette', '2', '00:10:00', '00:30:00', 4, 'Potato', 'Use waxy potatoes', 'Let it cool before serving', NULL),
('Thai Green Curry', 'Thai spicy coconut milk-based curry with chicken and vegetables', '3', '00:20:00', '00:30:00', 4, 'Chicken', 'Use fresh lemongrass', 'Serve with jasmine rice', NULL),
('Spanakopita', 'Greek spinach and feta cheese pie in phyllo pastry', '3', '00:30:00', '00:30:00', 6, 'Spinach', 'Use fresh spinach', 'Brush phyllo with melted butter', NULL),
('Tabbouleh', 'Lebanese parsley and bulgur wheat salad with tomatoes and mint', '2', '00:15:00', '00:00:00', 4, 'Parsley', 'Use fresh mint leaves', 'Chill before serving', NULL),
('Osso Buco', 'Italian braised veal shanks with vegetables and white wine', '4', '00:30:00', '02:00:00', 6, 'Veal', 'Cook slowly for tender meat', 'Serve with gremolata', 'Pair with a glass of white wine'),
('Hot and Sour Soup', 'Chinese spicy and tangy soup with mushrooms and tofu', '2', '00:20:00', '00:20:00', 4, 'Tofu', 'Use fresh tofu', NULL, NULL),
('Paneer Tikka', 'Indian grilled paneer cheese skewers with spices and vegetables', '3', '00:20:00', '00:15:00', 4, 'Paneer', 'Marinate paneer for at least 2 hours', 'Use skewers for grilling', NULL),
('Chilaquiles', 'Mexican tortilla casserole with salsa and cheese', '2', '00:20:00', '00:30:00', 4, 'Tortillas', 'Use fresh salsa', 'Top with sour cream and cheese', NULL),
('Miso Soup', 'Japanese soup made with soybean paste, tofu, and seaweed', '2', '00:10:00', '00:10:00', 4, 'Tofu', 'Use miso paste for authentic flavor', 'Serve hot', NULL),
('Ceviche', 'Latin American seafood dish marinated in citrus juices', '2', '00:15:00', '00:00:00', 4, 'Fish', 'Use fresh lime juice', 'Serve chilled', NULL),
('Eggplant Parmesan', 'Italian baked eggplant dish with tomato sauce and cheese', '3', '00:30:00', '00:45:00', 4, 'Eggplant', 'Use fresh eggplants', 'Top with mozzarella cheese', NULL),
('Vietnamese Spring Rolls', 'Vietnamese rice paper rolls filled with shrimp, vegetables, and vermicelli noodles', '2', '00:30:00', '00:30:00', 4, 'Shrimp', 'Use fresh herbs for best flavor', 'Serve with dipping sauce', NULL),
('Chicken Korma', 'Indian chicken curry cooked with yogurt, cream, and spices', '3', '00:30:00', '00:45:00', 4, 'Chicken', 'Marinate chicken for better flavor', 'Use fresh cream for richness', NULL),
('Caprese Pizza', 'Italian pizza topped with tomatoes, mozzarella cheese, and basil', '2', '00:20:00', '00:15:00', 4, 'Pizza dough', 'Use fresh basil leaves', 'Top with fresh mozzarella', NULL),
('Gyoza', 'Japanese pan-fried dumplings filled with ground meat and vegetables', '3', '00:30:00', '00:20:00', 4, 'Pork', 'Use fresh ginger for better flavor', 'Serve with dipping sauce', NULL),
('Pasta Primavera', 'Italian pasta dish with fresh vegetables and Parmesan cheese', '2', '00:20:00', '00:20:00', 4, 'Pasta', 'Use seasonal vegetables', 'Top with grated Parmesan', NULL),
('Tofu Curry', 'Asian curry dish with tofu, vegetables, and coconut milk', '2', '00:25:00', '00:25:00', 4, 'Tofu', 'Use firm tofu', 'Serve with steamed rice', NULL),
('Pho', 'Traditional Vietnamese noodle soup with beef or chicken.', '3', '00:20:00', '02:00:00', 4, 'Beef', 'Use fresh herbs for garnish.', 'Serve with lime wedges.', NULL),
('Banh Mi', 'Vietnamese sandwich with pickled vegetables and meat.', '2', '00:15:00', '00:20:00', 2, 'Pork', 'Use a crusty baguette.', NULL, NULL),
('Spring Rolls', 'Fresh Vietnamese spring rolls with shrimp or pork.', '2', '00:30:00', '00:10:00', 4, 'Shrimp', 'Use fresh mint and cilantro.', 'Soak rice paper briefly.', NULL),
('Beef Stew', 'Hearty American beef stew with vegetables.', '3', '00:20:00', '03:00:00', 6, 'Beef', 'Brown the beef first.', 'Use red wine for depth of flavor.', NULL),
('Apple Pie', 'Classic American apple pie with a flaky crust.', '4', '00:30:00', '01:00:00', 8, 'Apple', 'Use a mix of sweet and tart apples.', 'Brush the crust with egg wash.', NULL),
('BBQ Ribs', 'American BBQ ribs with smoky flavor.', '3', '00:15:00', '03:00:00', 4, 'Pork Ribs', 'Marinate the ribs overnight.', NULL, NULL),
('Feijoada', 'Brazilian black bean stew with pork.', '3', '00:30:00', '02:30:00', 6, 'Black Beans', 'Use a variety of pork cuts.', 'Serve with orange slices.', 'Add a bay leaf for extra flavor.'),
('Pão de Queijo', 'Brazilian cheese bread.', '2', '00:15:00', '00:25:00', 24, 'Cheese', 'Use tapioca flour.', 'Grate the cheese finely.', NULL),
('Brigadeiro', 'Brazilian chocolate truffles.', '1', '00:10:00', '00:10:00', 20, 'Condensed Milk', 'Use good quality cocoa powder.', NULL, NULL),
('Kimchi', 'Spicy fermented Korean cabbage.', '3', '00:30:00', '00:00:00', 10, 'Cabbage', 'Use Korean chili powder.', 'Ferment for at least a week.', NULL),
('Bibimbap', 'Korean rice bowl with assorted toppings.', '3', '00:20:00', '00:30:00', 4, 'Rice', 'Use a variety of vegetables.', 'Serve with a fried egg on top.', 'Mix well before eating.'),
('Bulgogi', 'Korean marinated beef.', '2', '00:20:00', '00:15:00', 4, 'Beef', 'Marinate the beef overnight.', 'Cook on high heat.', 'Serve with rice and lettuce wraps.'),
('Doro Wat', 'Ethiopian spicy chicken stew.', '4', '00:20:00', '01:30:00', 6, 'Chicken', 'Use berbere spice mix.', 'Serve with injera.', NULL),
('Injera', 'Ethiopian sourdough flatbread.', '4', '00:10:00', '00:05:00', 12, 'Teff Flour', 'Ferment the batter for 3 days.', 'Cook on a hot griddle.', NULL),
('Kitfo', 'Ethiopian seasoned raw beef.', '3', '00:15:00', '00:00:00', 4, 'Beef', 'Use high-quality beef.', 'Serve with injera or bread.', NULL);

INSERT INTO cuisine_recipe (recipe_name, cuisine_name) VALUES
('Spaghetti Carbonara', 'Italian'),
('Coq au Vin', 'French'),
('Kung Pao Chicken', 'Chinese'),
('Chicken Tikka Masala', 'Indian'),
('Tacos al Pastor', 'Mexican'),
('Sushi Rolls', 'Japanese'),
('Tom Yum Soup', 'Thai'),
('Greek Salad', 'Greek'),
('Paella', 'Spanish'),
('Hummus', 'Lebanese'),
('Margherita Pizza', 'Italian'),
('Beef Bourguignon', 'French'),
('Mapo Tofu', 'Chinese'),
('Chicken Biryani', 'Indian'),
('Guacamole', 'Mexican'),
('Tempura', 'Japanese'),
('Pad Thai', 'Thai'),
('Moussaka', 'Greek'),
('Gazpacho', 'Spanish'),
('Falafel', 'Lebanese'),
('Lasagna', 'Italian'),
('Ratatouille', 'French'),
('Peking Duck', 'Chinese'),
('Palak Paneer', 'Indian'),
('Chiles en Nogada', 'Mexican'),
('Sashimi', 'Japanese'),
('Tom Kha Gai', 'Thai'),
('Dolmades', 'Greek'),
('Fattoush', 'Lebanese'),
('Carbonnade Flamande', 'French'),
('Tiramisu', 'Italian'),
('Crepes Suzette', 'French'),
('Kung Pao Shrimp', 'Chinese'),
('Butter Chicken', 'Indian'),
('Enchiladas', 'Mexican'),
('Tempura Vegetables', 'Japanese'),
('Thai Green Curry', 'Thai'),
('Spanakopita', 'Greek'),
('Tabbouleh', 'Lebanese'),
('Osso Buco', 'Italian'),
('Hot and Sour Soup', 'Chinese'),
('Paneer Tikka', 'Indian'),
('Chilaquiles', 'Mexican'),
('Miso Soup', 'Japanese'),
('Ceviche', 'Latin American'),
('Eggplant Parmesan', 'Italian'),
('Vietnamese Spring Rolls', 'Vietnamese'),
('Chicken Korma', 'Indian'),
('Caprese Pizza', 'Italian'),
('Gyoza', 'Japanese'),
('Pasta Primavera', 'Italian'),
('Tofu Curry', 'Indian'),
('Pho', 'Vietnamese'),
('Banh Mi', 'Vietnamese'),
('Spring Rolls', 'Vietnamese'),
('Beef Stew', 'American'),
('Apple Pie', 'American'),
('BBQ Ribs', 'American'),
('Feijoada', 'Brazilian'),
('Pão de Queijo', 'Brazilian'),
('Brigadeiro', 'Brazilian'),
('Kimchi', 'Korean'),
('Bibimbap', 'Korean'),
('Bulgogi', 'Korean'),
('Doro Wat', 'Ethiopian'),
('Injera', 'Ethiopian'),
('Kitfo', 'Ethiopian'),
('Lamb Tagine', 'Moroccan'),
('Tortilla Española', 'Spanish'),
('Shakshuka', 'Israeli');

INSERT INTO nutrition_information (recipe_name, gram_fat, gram_prot, gram_carbo, calories) VALUES
('Spaghetti Carbonara', 15, 25, 30, NULL),
('Coq au Vin', 20, 30, 20, NULL),
('Kung Pao Chicken', 18, 28, 25, NULL),
('Chicken Tikka Masala', 22, 24, 35, NULL),
('Tacos al Pastor', 12, 20, 15, NULL),
('Sushi Rolls', 8, 15, 40, NULL),
('Tom Yum Soup', 5, 10, 15, NULL),
('Greek Salad', 10, 5, 20, NULL),
('Paella', 15, 30, 40, NULL),
('Hummus', 10, 5, 20, NULL),
('Margherita Pizza', 20, 15, 30, NULL),
('Beef Bourguignon', 25, 35, 20, NULL),
('Mapo Tofu', 10, 20, 15, NULL),
('Chicken Biryani', 30, 25, 45, NULL),
('Guacamole', 15, 5, 20, NULL),
('Tempura', 12, 18, 30, NULL),
('Pad Thai', 15, 20, 40, NULL),
('Moussaka', 20, 25, 35, NULL),
('Gazpacho', 5, 2, 10, NULL),
('Falafel', 10, 15, 25, NULL),
('Lasagna', 25, 20, 35, NULL),
('Ratatouille', 10, 5, 25, NULL),
('Peking Duck', 30, 35, 20, NULL),
('Palak Paneer', 15, 20, 25, NULL),
('Chiles en Nogada', 18, 20, 30, NULL),
('Sashimi', 5, 20, 10, NULL),
('Tom Kha Gai', 8, 12, 15, NULL),
('Dolmades', 12, 5, 25, NULL),
('Fattoush', 8, 5, 20, NULL),
('Carbonnade Flamande', 25, 30, 25, NULL),
('Tiramisu', 20, 10, 40, NULL),
('Crepes Suzette', 18, 8, 35, NULL),
('Kung Pao Shrimp', 15, 22, 30, NULL),
('Butter Chicken', 20, 25, 30, NULL),
('Enchiladas', 22, 18, 25, NULL),
('Tempura Vegetables', 10, 8, 30, NULL),
('Thai Green Curry', 12, 15, 25, NULL),
('Spanakopita', 15, 10, 30, NULL),
('Tabbouleh', 5, 8, 20, NULL),
('Osso Buco', 30, 35, 25, NULL),
('Hot and Sour Soup', 8, 10, 15, NULL),
('Paneer Tikka', 12, 18, 25, NULL),
('Chilaquiles', 20, 15, 30, NULL),
('Miso Soup', 5, 10, 10, NULL),
('Ceviche', 10, 20, 15, NULL),
('Eggplant Parmesan', 18, 15, 30, NULL),
('Vietnamese Spring Rolls', 8, 12, 20, NULL),
('Chicken Korma', 20, 25, 35, NULL),
('Caprese Pizza', 20, 15, 30, NULL),
('Gyoza', 15, 20, 25, NULL),
('Pasta Primavera', 12, 15, 35, NULL),
('Tofu Curry', 10, 18, 25, NULL),
('Pho', 8, 12, 25, NULL),
('Banh Mi', 12, 18, 30, NULL),
('Spring Rolls', 6, 8, 15, NULL),
('Beef Stew', 20, 25, 35, NULL),
('Apple Pie', 15, 10, 40, NULL),
('BBQ Ribs', 30, 28, 15, NULL),
('Feijoada', 25, 30, 20, NULL),
('Pão de Queijo', 18, 12, 22, NULL),
('Brigadeiro', 8, 5, 20, NULL),
('Kimchi', 3, 2, 5, NULL),
('Bibimbap', 15, 20, 30, NULL),
('Bulgogi', 18, 22, 25, NULL),
('Doro Wat', 22, 28, 18, NULL),
('Injera', 5, 3, 10, NULL),
('Kitfo', 25, 30, 15, NULL),
('Lamb Tagine', 20, 30, 40, NULL),
('Tortilla Española', 15, 25, 35, NULL),
('Shakshuka', 10, 20, 30, NULL);

INSERT INTO recipes_equipment (recipe_name, equipment_name)
VALUES
('Spaghetti Carbonara', 'Saucepan'),
('Spaghetti Carbonara', 'Frying Pan'),
('Spaghetti Carbonara', 'Mixing Bowl'),
('Coq au Vin', 'Dutch Oven'),
('Coq au Vin', 'Knife'),
('Coq au Vin', 'Cutting Board'),
('Kung Pao Chicken', 'Wok'),
('Kung Pao Chicken', 'Mixing Bowl'),
('Kung Pao Chicken', 'Spatula'),
('Chicken Tikka Masala', 'Frying Pan'),
('Chicken Tikka Masala', 'Mixing Bowl'),
('Chicken Tikka Masala', 'Knife'),
('Tacos al Pastor', 'Grill'),
('Tacos al Pastor', 'Knife'),
('Tacos al Pastor', 'Cutting Board'),
('Sushi Rolls', 'Bamboo Mat'),
('Sushi Rolls', 'Sharp Knife'),
('Sushi Rolls', 'Mixing Bowl'),
('Tom Yum Soup', 'Saucepan'),
('Tom Yum Soup', 'Knife'),
('Tom Yum Soup', 'Cutting Board'),
('Greek Salad', 'Mixing Bowl'),
('Greek Salad', 'Knife'),
('Greek Salad', 'Cutting Board'),
('Paella', 'Paella Pan'),
('Paella', 'Spatula'),
('Paella', 'Mixing Bowl'),
('Hummus', 'Food Processor'),
('Hummus', 'Mixing Bowl'),
('Hummus', 'Spatula'),
('Margherita Pizza', 'Oven'),
('Margherita Pizza', 'Baking Sheet'),
('Margherita Pizza', 'Mixing Bowl'),
('Beef Bourguignon', 'Dutch Oven'),
('Beef Bourguignon', 'Knife'),
('Beef Bourguignon', 'Cutting Board'),
('Mapo Tofu', 'Wok'),
('Mapo Tofu', 'Spatula'),
('Mapo Tofu', 'Mixing Bowl'),
('Chicken Biryani', 'Large Pot'),
('Chicken Biryani', 'Mixing Bowl'),
('Chicken Biryani', 'Spatula'),
('Guacamole', 'Mixing Bowl'),
('Guacamole', 'Fork'),
('Guacamole', 'Knife'),
('Tempura', 'Deep Fryer'),
('Tempura', 'Mixing Bowl'),
('Tempura', 'Tongs'),
('Pad Thai', 'Wok'),
('Pad Thai', 'Spatula'),
('Pad Thai', 'Mixing Bowl'),
('Moussaka', 'Baking Dish'),
('Moussaka', 'Knife'),
('Moussaka', 'Cutting Board'),
('Gazpacho', 'Blender'),
('Gazpacho', 'Mixing Bowl'),
('Gazpacho', 'Knife'),
('Falafel', 'Food Processor'),
('Falafel', 'Frying Pan'),
('Falafel', 'Mixing Bowl'),
('Lasagna', 'Baking Dish'),
('Lasagna', 'Mixing Bowl'),
('Lasagna', 'Spatula'),
('Ratatouille', 'Baking Dish'),
('Ratatouille', 'Knife'),
('Ratatouille', 'Cutting Board'),
('Peking Duck', 'Oven'),
('Peking Duck', 'Roasting Pan'),
('Peking Duck', 'Knife'),
('Palak Paneer', 'Saucepan'),
('Palak Paneer', 'Blender'),
('Palak Paneer', 'Knife'),
('Chiles en Nogada', 'Oven'),
('Chiles en Nogada', 'Baking Dish'),
('Chiles en Nogada', 'Knife'),
('Sashimi', 'Sharp Knife'),
('Sashimi', 'Mixing Bowl'),
('Sashimi', 'Serving Plate'),
('Tom Kha Gai', 'Saucepan'),
('Tom Kha Gai', 'Knife'),
('Tom Kha Gai', 'Cutting Board'),
('Dolmades', 'Large Pot'),
('Dolmades', 'Mixing Bowl'),
('Dolmades', 'Spatula'),
('Fattoush', 'Mixing Bowl'),
('Fattoush', 'Knife'),
('Fattoush', 'Cutting Board'),
('Carbonnade Flamande', 'Dutch Oven'),
('Carbonnade Flamande', 'Knife'),
('Carbonnade Flamande', 'Cutting Board'),
('Tiramisu', 'Mixing Bowl'),
('Tiramisu', 'Whisk'),
('Tiramisu', 'Baking Dish'),
('Crepes Suzette', 'Crepe Pan'),
('Crepes Suzette', 'Mixing Bowl'),
('Crepes Suzette', 'Spatula'),
('Kung Pao Shrimp', 'Wok'),
('Kung Pao Shrimp', 'Spatula'),
('Kung Pao Shrimp', 'Mixing Bowl'),
('Butter Chicken', 'Frying Pan'),
('Butter Chicken', 'Mixing Bowl'),
('Butter Chicken', 'Spatula'),
('Enchiladas', 'Oven'),
('Enchiladas', 'Baking Dish'),
('Enchiladas', 'Knife'),
('Tempura Vegetables', 'Deep Fryer'),
('Tempura Vegetables', 'Mixing Bowl'),
('Tempura Vegetables', 'Tongs'),
('Thai Green Curry', 'Saucepan'),
('Thai Green Curry', 'Mixing Bowl'),
('Thai Green Curry', 'Spatula'),
('Spanakopita', 'Oven'),
('Spanakopita', 'Baking Dish'),
('Spanakopita', 'Mixing Bowl'),
('Tabbouleh', 'Mixing Bowl'),
('Tabbouleh', 'Knife'),
('Tabbouleh', 'Cutting Board'),
('Osso Buco', 'Dutch Oven'),
('Osso Buco', 'Knife'),
('Osso Buco', 'Cutting Board'),
('Hot and Sour Soup', 'Saucepan'),
('Hot and Sour Soup', 'Knife'),
('Hot and Sour Soup', 'Cutting Board'),
('Paneer Tikka', 'Grill'),
('Paneer Tikka', 'Mixing Bowl'),
('Paneer Tikka', 'Spatula'),
('Chilaquiles', 'Frying Pan'),
('Chilaquiles', 'Mixing Bowl'),
('Chilaquiles', 'Spatula'),
('Miso Soup', 'Saucepan'),
('Miso Soup', 'Mixing Bowl'),
('Miso Soup', 'Knife'),
('Ceviche', 'Mixing Bowl'),
('Ceviche', 'Knife'),
('Ceviche', 'Cutting Board'),
('Eggplant Parmesan', 'Baking Dish'),
('Eggplant Parmesan', 'Mixing Bowl'),
('Eggplant Parmesan', 'Knife'),
('Vietnamese Spring Rolls', 'Mixing Bowl'),
('Vietnamese Spring Rolls', 'Knife'),
('Vietnamese Spring Rolls', 'Cutting Board'),
('Chicken Korma', 'Frying Pan'),
('Chicken Korma', 'Mixing Bowl'),
('Chicken Korma', 'Spatula'),
('Caprese Pizza', 'Oven'),
('Caprese Pizza', 'Baking Sheet'),
('Caprese Pizza', 'Mixing Bowl'),
('Gyoza', 'Frying Pan'),
('Gyoza', 'Mixing Bowl'),
('Gyoza', 'Spatula'),
('Pasta Primavera', 'Saucepan'),
('Pasta Primavera', 'Mixing Bowl'),
('Pasta Primavera', 'Spatula'),
('Tofu Curry', 'Saucepan'),
('Tofu Curry', 'Mixing Bowl'),
('Tofu Curry', 'Spatula'),
('Pho', 'Stock Pot'),
('Pho', 'Strainer'),
('Pho', 'Chopsticks'),
('Pho', 'Soup Spoons'),
('Banh Mi', 'Baking Sheet'),
('Spring Rolls', 'Knife'),
('Spring Rolls', 'Cutting Board'),
('Beef Stew', 'Dutch Oven'),
('Beef Stew', 'Serving Plate'),
('Apple Pie', 'Mixing Bowl'),
('Apple Pie', 'Rolling Pin'),
('Apple Pie', 'Pie Pan'),
('BBQ Ribs', 'Grill'),
('BBQ Ribs', 'Tongs'),
('Feijoada', 'Large Pot'),
('Feijoada', 'Serving Plate'),
('Pão de Queijo', 'Mixing Bowl'),
('Pão de Queijo', 'Baking Sheet'),
('Brigadeiro', 'Saucepan'),
('Brigadeiro', 'Mixing Spoon'),
('Kimchi', 'Mixing Bowl'),
('Kimchi', 'Knife'),
('Bibimbap', 'Wok'),
('Bibimbap', 'Rice Cooker'),
('Bulgogi', 'Grill'),
('Bulgogi', 'Tongs'),
('Doro Wat', 'Saucepan'),
('Doro Wat', 'Knife'),
('Injera', 'Griddle'),
('Injera', 'Spatula'),
('Kitfo', 'Knife'),
('Kitfo', 'Cutting Board'),
('Lamb Tagine', 'Dutch Oven'),
('Lamb Tagine', 'Knife'),
('Lamb Tagine', 'Cutting Board'),
('Tortilla Española', 'Frying Pan'),
('Tortilla Española', 'Knife'),
('Tortilla Española', 'Cutting Board'),
('Shakshuka', 'Saucepan'),
('Shakshuka', 'Knife'),
('Shakshuka', 'Cutting Board');

INSERT INTO meal_recipe (recipe_name, meal_name)
VALUES
('Sushi Rolls', 'Breakfast'),
('Greek Salad', 'Breakfast'),
('Hummus', 'Breakfast'),
('Guacamole', 'Breakfast'),
('Miso Soup', 'Breakfast'),
('Fattoush', 'Breakfast'),
('Tiramisu', 'Breakfast'),
('Tiramisu', 'Dessert'),
('Tabbouleh', 'Breakfast'),
('Spaghetti Carbonara', 'Lunch'),
('Coq au Vin', 'Lunch'),
('Kung Pao Chicken', 'Lunch'),
('Chicken Tikka Masala', 'Lunch'),
('Tacos al Pastor', 'Lunch'),
('Tom Yum Soup', 'Lunch'),
('Paella', 'Lunch'),
('Beef Bourguignon', 'Lunch'),
('Mapo Tofu', 'Lunch'),
('Chicken Biryani', 'Lunch'),
('Tempura', 'Lunch'),
('Pad Thai', 'Lunch'),
('Moussaka', 'Lunch'),
('Falafel', 'Lunch'),
('Lasagna', 'Lunch'),
('Ratatouille', 'Lunch'),
('Peking Duck', 'Lunch'),
('Palak Paneer', 'Lunch'),
('Chiles en Nogada', 'Lunch'),
('Tom Kha Gai', 'Lunch'),
('Dolmades', 'Lunch'),
('Carbonnade Flamande', 'Lunch'),
('Crepes Suzette', 'Lunch'),
('Crepes Suzette', 'Dessert'),
('Kung Pao Shrimp', 'Lunch'),
('Butter Chicken', 'Lunch'),
('Enchiladas', 'Lunch'),
('Thai Green Curry', 'Lunch'),
('Spanakopita', 'Lunch'),
('Osso Buco', 'Lunch'),
('Hot and Sour Soup', 'Lunch'),
('Paneer Tikka', 'Lunch'),
('Chilaquiles', 'Lunch'),
('Eggplant Parmesan', 'Lunch'),
('Vietnamese Spring Rolls', 'Lunch'),
('Chicken Korma', 'Lunch'),
('Caprese Pizza', 'Lunch'),
('Gyoza', 'Lunch'),
('Pasta Primavera', 'Lunch'),
('Tofu Curry', 'Lunch'),
('Spaghetti Carbonara', 'Dinner'),
('Coq au Vin', 'Dinner'),
('Kung Pao Chicken', 'Dinner'),
('Chicken Tikka Masala', 'Dinner'),
('Tacos al Pastor', 'Dinner'),
('Tom Yum Soup', 'Dinner'),
('Paella', 'Dinner'),
('Beef Bourguignon', 'Dinner'),
('Mapo Tofu', 'Dinner'),
('Chicken Biryani', 'Dinner'),
('Tempura', 'Dinner'),
('Pad Thai', 'Dinner'),
('Moussaka', 'Dinner'),
('Falafel', 'Dinner'),
('Lasagna', 'Dinner'),
('Ratatouille', 'Dinner'),
('Peking Duck', 'Dinner'),
('Palak Paneer', 'Dinner'),
('Chiles en Nogada', 'Dinner'),
('Tom Kha Gai', 'Dinner'),
('Dolmades', 'Dinner'),
('Carbonnade Flamande', 'Dinner'),
('Crepes Suzette', 'Dinner'),
('Kung Pao Shrimp', 'Dinner'),
('Butter Chicken', 'Dinner'),
('Enchiladas', 'Dinner'),
('Thai Green Curry', 'Dinner'),
('Spanakopita', 'Dinner'),
('Osso Buco', 'Dinner'),
('Hot and Sour Soup', 'Dinner'),
('Paneer Tikka', 'Dinner'),
('Chilaquiles', 'Dinner'),
('Eggplant Parmesan', 'Dinner'),
('Vietnamese Spring Rolls', 'Dinner'),
('Chicken Korma', 'Dinner'),
('Caprese Pizza', 'Dinner'),
('Gyoza', 'Dinner'),
('Pasta Primavera', 'Dinner'),
('Tofu Curry', 'Dinner'),
('Pho', 'Dinner'),
('Banh Mi', 'Lunch'),
('Spring Rolls', 'Lunch'),
('Beef Stew', 'Dinner'),
('Apple Pie', 'Dessert'),
('BBQ Ribs', 'Dinner'),
('BBQ Ribs', 'Lunch'),
('Feijoada', 'Dinner'),
('Pão de Queijo', 'Breakfast'),
('Brigadeiro', 'Dessert'),
('Kimchi', 'Dinner'),
('Bibimbap', 'Dinner'),
('Bulgogi', 'Dinner'),
('Doro Wat', 'Dinner'),
('Injera', 'Dinner'),
('Kitfo', 'Dinner'),
('Ceviche', 'Lunch'),
('Sashimi', 'Lunch'),
('Lamb Tagine', 'Dinner'),
('Margherita Pizza', 'Dinner'),
('Tortilla Española', 'Breakfast'),
('Gazpacho', 'Lunch'),
('Shakshuka', 'Breakfast'),
('Tempura Vegetables', 'Lunch');

INSERT INTO tags (tag_name)
VALUES
('brunch'),
('quick-lunch'),
('cool dish'),
('dinner party'),
('comfort food'),
('healthy'),
('vegetarian'),
('gluten-free'),
('spicy'),
('seafood'),
('classic'),
('family meal'),
('easy'),
('dessert');

INSERT INTO tag_recipe (recipe_name, tag_name)
VALUES
('Spaghetti Carbonara', 'classic'),
('Spaghetti Carbonara', 'comfort food'),
('Spaghetti Carbonara', 'family meal'),
('Coq au Vin', 'classic'),
('Coq au Vin', 'dinner party'),
('Coq au Vin', 'family meal'),
('Kung Pao Chicken', 'spicy'),
('Kung Pao Chicken', 'quick-lunch'),
('Kung Pao Chicken', 'family meal'),
('Chicken Tikka Masala', 'spicy'),
('Chicken Tikka Masala', 'classic'),
('Chicken Tikka Masala', 'comfort food'),
('Tacos al Pastor', 'spicy'),
('Tacos al Pastor', 'quick-lunch'),
('Tacos al Pastor', 'family meal'),
('Sushi Rolls', 'cool dish'),
('Sushi Rolls', 'seafood'),
('Sushi Rolls', 'brunch'),
('Tom Yum Soup', 'spicy'),
('Tom Yum Soup', 'seafood'),
('Tom Yum Soup', 'healthy'),
('Greek Salad', 'healthy'),
('Greek Salad', 'cool dish'),
('Greek Salad', 'vegetarian'),
('Paella', 'classic'),
('Paella', 'seafood'),
('Paella', 'dinner party'),
('Hummus', 'healthy'),
('Hummus', 'cool dish'),
('Hummus', 'vegetarian'),
('Margherita Pizza', 'classic'),
('Margherita Pizza', 'vegetarian'),
('Margherita Pizza', 'family meal'),
('Beef Bourguignon', 'classic'),
('Beef Bourguignon', 'dinner party'),
('Beef Bourguignon', 'comfort food'),
('Mapo Tofu', 'spicy'),
('Mapo Tofu', 'quick-lunch'),
('Mapo Tofu', 'vegetarian'),
('Chicken Biryani', 'spicy'),
('Chicken Biryani', 'classic'),
('Chicken Biryani', 'family meal'),
('Guacamole', 'healthy'),
('Guacamole', 'cool dish'),
('Guacamole', 'brunch'),
('Tempura', 'quick-lunch'),
('Tempura', 'seafood'),
('Tempura', 'family meal'),
('Pad Thai', 'spicy'),
('Pad Thai', 'quick-lunch'),
('Pad Thai', 'classic'),
('Moussaka', 'comfort food'),
('Moussaka', 'family meal'),
('Moussaka', 'classic'),
('Gazpacho', 'cool dish'),
('Gazpacho', 'healthy'),
('Gazpacho', 'vegetarian'),
('Falafel', 'vegetarian'),
('Falafel', 'healthy'),
('Falafel', 'quick-lunch'),
('Lasagna', 'classic'),
('Lasagna', 'comfort food'),
('Lasagna', 'family meal'),
('Ratatouille', 'vegetarian'),
('Ratatouille', 'healthy'),
('Ratatouille', 'classic'),
('Peking Duck', 'classic'),
('Peking Duck', 'dinner party'),
('Peking Duck', 'family meal'),
('Palak Paneer', 'vegetarian'),
('Palak Paneer', 'spicy'),
('Palak Paneer', 'comfort food'),
('Chiles en Nogada', 'spicy'),
('Chiles en Nogada', 'classic'),
('Chiles en Nogada', 'dinner party'),
('Sashimi', 'cool dish'),
('Sashimi', 'seafood'),
('Sashimi', 'healthy'),
('Tom Kha Gai', 'spicy'),
('Tom Kha Gai', 'seafood'),
('Tom Kha Gai', 'healthy'),
('Dolmades', 'vegetarian'),
('Dolmades', 'healthy'),
('Dolmades', 'cool dish'),
('Fattoush', 'vegetarian'),
('Fattoush', 'healthy'),
('Fattoush', 'cool dish'),
('Carbonnade Flamande', 'classic'),
('Carbonnade Flamande', 'dinner party'),
('Carbonnade Flamande', 'comfort food'),
('Tiramisu', 'classic'),
('Tiramisu', 'dessert'),
('Tiramisu', 'dinner party'),
('Crepes Suzette', 'classic'),
('Crepes Suzette', 'dessert'),
('Crepes Suzette', 'brunch'),
('Kung Pao Shrimp', 'spicy'),
('Kung Pao Shrimp', 'quick-lunch'),
('Kung Pao Shrimp', 'seafood'),
('Butter Chicken', 'spicy'),
('Butter Chicken', 'classic'),
('Butter Chicken', 'comfort food'),
('Enchiladas', 'spicy'),
('Enchiladas', 'quick-lunch'),
('Enchiladas', 'family meal'),
('Tempura Vegetables', 'vegetarian'),
('Tempura Vegetables', 'quick-lunch'),
('Tempura Vegetables', 'family meal'),
('Thai Green Curry', 'spicy'),
('Thai Green Curry', 'quick-lunch'),
('Thai Green Curry', 'classic'),
('Spanakopita', 'vegetarian'),
('Spanakopita', 'brunch'),
('Spanakopita', 'classic'),
('Tabbouleh', 'vegetarian'),
('Tabbouleh', 'healthy'),
('Tabbouleh', 'cool dish'),
('Osso Buco', 'classic'),
('Osso Buco', 'dinner party'),
('Osso Buco', 'family meal'),
('Hot and Sour Soup', 'spicy'),
('Hot and Sour Soup', 'quick-lunch'),
('Hot and Sour Soup', 'healthy'),
('Paneer Tikka', 'vegetarian'),
('Paneer Tikka', 'spicy'),
('Paneer Tikka', 'quick-lunch'),
('Chilaquiles', 'spicy'),
('Chilaquiles', 'quick-lunch'),
('Chilaquiles', 'brunch'),
('Miso Soup', 'vegetarian'),
('Miso Soup', 'quick-lunch'),
('Miso Soup', 'healthy'),
('Ceviche', 'cool dish'),
('Ceviche', 'seafood'),
('Ceviche', 'healthy'),
('Eggplant Parmesan', 'vegetarian'),
('Eggplant Parmesan', 'classic'),
('Eggplant Parmesan', 'comfort food'),
('Vietnamese Spring Rolls', 'cool dish'),
('Vietnamese Spring Rolls', 'seafood'),
('Vietnamese Spring Rolls', 'healthy'),
('Chicken Korma', 'spicy'),
('Chicken Korma', 'comfort food'),
('Chicken Korma', 'classic'),
('Caprese Pizza', 'vegetarian'),
('Caprese Pizza', 'brunch'),
('Caprese Pizza', 'classic'),
('Gyoza', 'quick-lunch'),
('Gyoza', 'family meal'),
('Gyoza', 'classic'),
('Pasta Primavera', 'vegetarian'),
('Pasta Primavera', 'quick-lunch'),
('Pasta Primavera', 'classic'),
('Tofu Curry', 'vegetarian'),
('Tofu Curry', 'spicy'),
('Tofu Curry', 'healthy'),
('Pho', 'comfort food'),
('Pho', 'spicy'),
('Banh Mi', 'quick-lunch'),
('Banh Mi', 'comfort food'),
('Spring Rolls', 'cool dish'),
('Spring Rolls', 'vegetarian'),
('Beef Stew', 'comfort food'),
('Beef Stew', 'classic'),
('Beef Stew', 'family meal'),
('Apple Pie', 'dessert'),
('Apple Pie', 'classic'),
('BBQ Ribs', 'comfort food'),
('BBQ Ribs', 'family meal'),
('Feijoada', 'comfort food'),
('Feijoada', 'spicy'),
('Pão de Queijo', 'comfort food'),
('Pão de Queijo', 'gluten-free'),
('Pão de Queijo', 'easy'),
('Brigadeiro', 'dessert'),
('Brigadeiro', 'classic'),
('Kimchi', 'comfort food'),
('Kimchi', 'spicy'),
('Bibimbap', 'comfort food'),
('Bibimbap', 'spicy'),
('Bulgogi', 'comfort food'),
('Bulgogi', 'spicy'),
('Doro Wat', 'comfort food'),
('Doro Wat', 'spicy'),
('Injera', 'comfort food'),
('Kitfo', 'comfort food'),
('Lamb Tagine', 'comfort food'),
('Lamb Tagine', 'family meal'),
('Shakshuka', 'brunch'),
('Shakshuka', 'healthy'),
('Tortilla Española', 'quick-lunch'),
('Tortilla Española', 'comfort food');

INSERT INTO steps (step_description, step_number, recipe_name)
VALUES
('Cook pasta and bacon',1,'Spaghetti Carbonara'),('Mix eggs and cheese',2,'Spaghetti Carbonara'),('Combine with pasta and serve',3,'Spaghetti Carbonara'),
('Marinate chicken in wine',1,'Coq au Vin'),('Sauté bacon and vegetables',2,'Coq au Vin'),('Simmer chicken in sauce',3,'Coq au Vin'),
('Marinate chicken and stir-fry',1,'Kung Pao Chicken'),('Add vegetables and peanuts',2,'Kung Pao Chicken'),('Thicken sauce and serve',3,'Kung Pao Chicken'),
('Marinate chicken in yogurt and spices',1,'Chicken Tikka Masala'),('Grill chicken and simmer in sauce',2,'Chicken Tikka Masala'),('Serve with rice and naan',3,'Chicken Tikka Masala'),
('Marinate pork in adobo sauce',1,'Tacos al Pastor'),('Slice pineapple and grill with pork',2,'Tacos al Pastor'),('Assemble tacos with toppings',3,'Tacos al Pastor'),
('Prepare sushi rice and ingredients',1,'Sushi Rolls'),('Roll ingredients in nori and rice',2,'Sushi Rolls'),('Slice and serve with soy sauce',3,'Sushi Rolls'),
('Boil broth with lemongrass and galangal',1,'Tom Yum Soup'),('Add shrimp and mushrooms',2,'Tom Yum Soup'),('Season with lime juice and chili',3,'Tom Yum Soup'),
('Chop vegetables and olives',1,'Greek Salad'),('Toss with feta cheese and dressing',2,'Greek Salad'),('Serve with crusty bread',3,'Greek Salad'),
('Sauté onions, garlic, and peppers',1,'Paella'),('Add rice, broth, and saffron',2,'Paella'),('Simmer with seafood and chorizo',3,'Paella'),
('Blend chickpeas, tahini, and garlic',1,'Hummus'),('Drizzle with olive oil and paprika',2,'Hummus'),('Serve with pita bread and vegetables',3,'Hummus'),
('Stretch pizza dough and spread sauce',1,'Margherita Pizza'),('Layer with cheese and tomato slices',2,'Margherita Pizza'),('Bake until crust is golden',3,'Margherita Pizza'),
('Sauté bacon and beef',1,'Beef Bourguignon'),('Add onions, carrots, and wine',2,'Beef Bourguignon'),('Simmer until beef is tender',3,'Beef Bourguignon'),
('Brown minced meat and tofu',1,'Mapo Tofu'),('Add spicy bean paste and sauce',2,'Mapo Tofu'),('Simmer until flavors meld',3,'Mapo Tofu'),
('Marinate chicken and cook rice',1,'Chicken Biryani'),('Layer chicken and rice with spices',2,'Chicken Biryani'),('Steam until rice is cooked',3,'Chicken Biryani'),
('Mash avocados and mix with tomatoes',1,'Guacamole'),('Season with lime juice and salt',2,'Guacamole'),('Serve with tortilla chips',3,'Guacamole'),
('Prepare batter and heat oil',1,'Tempura'),('Dip seafood and vegetables',2,'Tempura'),('Fry until golden and crispy',3,'Tempura'),
('Soak noodles and prepare sauce',1,'Pad Thai'),('Stir-fry noodles with tofu and shrimp',2,'Pad Thai'),('Toss with bean sprouts and peanuts',3,'Pad Thai'),
('Slice and salt eggplant',1,'Moussaka'),('Layer with meat sauce and potatoes',2,'Moussaka'),('Top with bechamel sauce and bake',3,'Moussaka'),
('Blend tomatoes, peppers, and cucumbers',1,'Gazpacho'),('Season with olive oil and vinegar',2,'Gazpacho'),('Chill before serving',3,'Gazpacho'),
('Blend chickpeas, herbs, and spices',1,'Falafel'),('Form mixture into balls and fry',2,'Falafel'),('Serve with tahini sauce and pita',3,'Falafel'),
('Cook pasta and prepare sauce',1,'Lasagna'),('Layer pasta, sauce, and cheese',2,'Lasagna'),('Bake until bubbly and golden',3,'Lasagna'),
('Sauté onions, garlic, and eggplant',1,'Ratatouille'),('Add zucchini, peppers, and tomatoes',2,'Ratatouille'),('Simmer until vegetables are tender',3,'Ratatouille'),
('Marinate duck and roast',1,'Peking Duck'),('Serve with pancakes, sauce, and scallions',2,'Peking Duck'),
('Blanch spinach and purée',1,'Palak Paneer'),('Sauté paneer and spices',2,'Palak Paneer'),('Simmer in spinach sauce',3,'Palak Paneer'),
('Roast peppers and prepare filling',1,'Chiles en Nogada'),('Stuff peppers and top with sauce',2,'Chiles en Nogada'),('Garnish with pomegranate seeds',3,'Chiles en Nogada'),
('Slice fish and arrange on plate',1,'Sashimi'),('Serve with soy sauce, wasabi, and ginger',2,'Sashimi'),
('Simmer broth with lemongrass and galangal',1,'Tom Kha Gai'),('Add chicken, mushrooms, and coconut milk',2,'Tom Kha Gai'),('Season with lime juice and chili',3,'Tom Kha Gai'),
('Blanch grape leaves and prepare filling',1,'Dolmades'),('Roll grape leaves with filling',2,'Dolmades'),('Simmer in lemon juice and oil',3,'Dolmades'),
('Toast pita bread and chop vegetables',1,'Fattoush'),('Toss with salad dressing and herbs',2,'Fattoush'),('Garnish with pita chips and serve',3,'Fattoush'),
('Sauté onions and beef',1,'Carbonnade Flamande'),('Add beer, broth, and seasonings',2,'Carbonnade Flamande'),('Simmer until beef is tender',3,'Carbonnade Flamande'),
('Brew strong coffee and prepare cream',1,'Tiramisu'),('Soak ladyfingers in coffee and layer with cream',2,'Tiramisu'),('Chill before serving',3,'Tiramisu'),
('Prepare crepe batter and cook crepes',1,'Crepes Suzette'),('Prepare sauce with orange juice and zest',2,'Crepes Suzette'),('Fold crepes and flambe with Grand Marnier',3,'Crepes Suzette'),
('Marinate shrimp and stir-fry',1,'Kung Pao Shrimp'),('Add vegetables and peanuts',2,'Kung Pao Shrimp'),('Thicken sauce and serve',3,'Kung Pao Shrimp'),
('Marinate chicken in yogurt and spices',1,'Butter Chicken'),('Simmer chicken in tomato sauce and cream',2,'Butter Chicken'),('Serve with rice and naan',3,'Butter Chicken'),
('Prepare sauce and filling',1,'Enchiladas'),('Roll tortillas with filling and place in dish',2,'Enchiladas'),('Top with sauce and cheese and bake',3,'Enchiladas'),
('Prepare batter and heat oil',1,'Tempura Vegetables'),('Dip vegetables in batter and fry',2,'Tempura Vegetables'),('Serve with dipping sauce',3,'Tempura Vegetables'),
('Prepare curry paste and simmer with coconut milk',1,'Thai Green Curry'),('Add chicken and vegetables',2,'Thai Green Curry'),('Serve with rice',3,'Thai Green Curry'),
('Prepare filling and phyllo pastry',1,'Spanakopita'),('Layer phyllo with filling and bake',2,'Spanakopita'),('Serve warm or at room temperature',3,'Spanakopita'),
('Soak bulgur wheat and chop vegetables',1,'Tabbouleh'),('Mix with lemon juice, oil, and herbs',2,'Tabbouleh'),('Chill before serving',3,'Tabbouleh'),
('Sear veal shanks and sauté vegetables',1,'Osso Buco'),('Add tomatoes, broth, and wine',2,'Osso Buco'),('Braise until veal is tender',3,'Osso Buco'),
('Prepare broth and slice ingredients',1,'Hot and Sour Soup'),('Simmer with mushrooms, tofu, and seasonings',2,'Hot and Sour Soup'),('Garnish with green onions and serve',3,'Hot and Sour Soup'),
('Marinate paneer and vegetables',1,'Paneer Tikka'),('Grill skewers until charred',2,'Paneer Tikka'),('Serve with chutney and naan',3,'Paneer Tikka'),
('Prepare sauce and toppings',1,'Chilaquiles'),('Layer tortilla chips with sauce and cheese',2,'Chilaquiles'),('Bake until cheese is melted',3,'Chilaquiles'),
('Prepare broth and add tofu and seaweed',1,'Miso Soup'),('Simmer until flavors meld',2,'Miso Soup'),('Serve hot with green onions',3,'Miso Soup'),
('Marinate fish in citrus juices',1,'Ceviche'),('Add vegetables and seasonings',2,'Ceviche'),('Chill until fish is opaque',3,'Ceviche'),
('Slice and salt eggplant',1,'Eggplant Parmesan'),('Layer with sauce, cheese, and repeat',2,'Eggplant Parmesan'),('Bake until cheese is bubbly and golden',3,'Eggplant Parmesan'),
('Soak vermicelli noodles and prepare fillings',1,'Vietnamese Spring Rolls'),('Roll fillings in rice paper and serve',2,'Vietnamese Spring Rolls'),
('Prepare sauce and marinate chicken',1,'Chicken Korma'),('Simmer chicken in sauce until cooked',2,'Chicken Korma'),('Garnish with nuts and serve with rice',3,'Chicken Korma'),
('Stretch pizza dough and spread sauce',1,'Caprese Pizza'),('Layer with cheese and tomato slices',2,'Caprese Pizza'),('Bake until crust is golden',3,'Caprese Pizza'),
('Prepare filling and wrappers',1,'Gyoza'),('Fill wrappers with filling and fold',2,'Gyoza'),('Pan-fry until crispy and serve with dipping sauce',3,'Gyoza'),
('Cook pasta and blanch vegetables',1,'Pasta Primavera'),('Toss with sauce and Parmesan cheese',2,'Pasta Primavera'),('Garnish with fresh herbs',3,'Pasta Primavera'),
('Marinate tofu and vegetables',1,'Tofu Curry'),('Simmer in coconut milk and spices',2,'Tofu Curry'),('Serve with rice and garnish with cilantro',3,'Tofu Curry'),
('Soak rice noodles for 20 minutes.', 1, 'Pho'), ('Boil noodles for 2 minutes.', 2, 'Pho'), ('Serve hot with toppings.', 3, 'Pho'),
('Spread mayo and pate on baguette.', 1, 'Banh Mi'), ('Layer with ingredients.', 2, 'Banh Mi'), ('Slice and serve.', 3, 'Banh Mi'),
('Soak rice paper in water.', 1, 'Spring Rolls'), ('Fill and roll.', 2, 'Spring Rolls'), ('Repeat with remaining ingredients.', 3, 'Spring Rolls'),
('Cook beans with pork.', 1, 'Feijoada'), ('Serve hot.', 2, 'Feijoada'),
('Mix tapioca flour, milk, cheese, and eggs.', 1, 'Pão de Queijo'), ('Bake until golden.', 2, 'Pão de Queijo'), ('Serve warm.', 3, 'Pão de Queijo'),
('Mix condensed milk, cocoa, and butter in pan.', 1, 'Brigadeiro'), ('Cook until thickened.', 2, 'Brigadeiro'), ('Roll in sprinkles.', 3, 'Brigadeiro'),
('Mix cabbage, salt, and spices.', 1, 'Kimchi'), ('Ferment for few days.', 2, 'Kimchi'), ('Serve chilled.', 3, 'Kimchi'),
('Cook rice.', 1, 'Bibimbap'), ('Top with beef and veggies.', 2, 'Bibimbap'), ('Serve with sauce.', 3, 'Bibimbap'),
('Marinate beef.', 1, 'Bulgogi'), ('Grill until cooked.', 2, 'Bulgogi'), ('Serve hot.', 3, 'Bulgogi'),
('Simmer chicken in spices.', 1, 'Doro Wat'), ('Serve with injera.', 2, 'Doro Wat'),
('Mix teff flour, water, and yeast.', 1, 'Injera'), ('Cook on griddle.', 2, 'Injera'),
('Season beef.', 1, 'Kitfo'), ('Serve with butter.', 2, 'Kitfo'),
('Peel and core apples', 1, 'Apple Pie'),
('Prepare pie crust', 2, 'Apple Pie'),
('Mix apples with sugar and spices', 3, 'Apple Pie'),
('Fill pie crust with apple mixture', 4, 'Apple Pie'),
('Top pie with second crust and vent', 5, 'Apple Pie'),
('Bake pie until golden brown', 6, 'Apple Pie'),
('Serve pie with ice cream', 7, 'Apple Pie'),
('Prepare ingredients: beef, vegetables, broth', 1, 'Beef Stew'),
('Brown beef in pot', 2, 'Beef Stew'),
('Add vegetables and broth to pot', 3, 'Beef Stew'),
('Simmer stew until beef is tender', 4, 'Beef Stew'),
('Season stew with salt and pepper', 5, 'Beef Stew'),
('Serve stew hot', 6, 'Beef Stew'),
('Prepare ingredients: lamb, spices, vegetables', 1, 'Lamb Tagine'),
('Brown lamb in tagine', 2, 'Lamb Tagine'),
('Add spices and vegetables to tagine', 3, 'Lamb Tagine'),
('Cover and simmer tagine until lamb is tender', 4, 'Lamb Tagine'),
('Serve tagine with couscous', 5, 'Lamb Tagine'),
('Marinate ribs in BBQ sauce', 1, 'BBQ Ribs'),
('Grill ribs over medium heat', 2, 'BBQ Ribs'),
('Baste ribs with BBQ sauce while grilling', 3, 'BBQ Ribs'),
('Serve ribs hot with additional BBQ sauce', 4, 'BBQ Ribs'),
('Slice potatoes and onions', 1, 'Tortilla Española'),
('Fry potatoes and onions in pan', 2, 'Tortilla Española'),
('Add beaten eggs to pan', 3, 'Tortilla Española'),
('Cook until eggs are set', 4, 'Tortilla Española'),
('Flip tortilla to cook other side', 5, 'Tortilla Española'),
('Serve tortilla warm or at room temperature', 6, 'Tortilla Española'),
('Chop tomatoes, onions, and peppers', 1, 'Shakshuka'),
('Saute vegetables in pan with olive oil', 2, 'Shakshuka'),
('Add spices and tomato sauce to pan', 3, 'Shakshuka'),
('Crack eggs into pan and simmer until set', 4, 'Shakshuka'),
('Garnish with herbs and serve hot', 5, 'Shakshuka');

IINSERT INTO themes (theme_name, theme_desc) VALUES 
('Indian Cuisine', 'Inspired by Indian culinary traditions'), 
('Spicy Delights', 'Packs a punch of heat and flavor'), 
('Comfort Food', 'Evokes warmth and satisfaction'), 
('Mexican Cuisine', 'Vibrant flavors of Mexico'), 
('Street Food', 'Inspired by popular street food'), 
('Family Favorites', 'Loved by the whole family'), 
('Japanese Cuisine', 'Delicate flavors of Japanese cooking'), 
('Seafood Extravaganza', 'Abundance of delicious seafood'), 
('Healthy Choices', 'Promotes health and wellness'), 
('Asian Comfort', 'Comfort and warmth from Asian cuisine'), 
('Mediterranean Delights', 'Captures the essence of Mediterranean cuisine'), 
('Healthy Eating', 'Promotes a balanced diet'), 
('Vegetarian Options', 'Focuses on plant-based ingredients'), 
('Spanish Cuisine', 'Rich culinary heritage of Spain'), 
('Dinner Party Favorites', 'Perfect for entertaining dinner parties'), 
('Middle Eastern Flavors', 'Bold and aromatic flavors of the Middle East'), 
('Italian Cuisine', 'Diverse and delicious flavors of Italy'), 
('French Cuisine', 'Sophistication and elegance of French cooking'), 
('Chinese Cuisine', 'Diverse and flavorful cuisine of China'), 
('Dessert Delights', 'Satisfies any sweet tooth'), 
('Brunch Bonanza', 'Ideal for leisurely weekend brunches'), 
('Quick Lunch Ideas', 'Perfect for quick and delicious lunches'), 
('Latin American Cuisine', 'Vibrant and diverse culinary traditions'), 
('African Cuisine', 'Flavors inspired by African culinary traditions'), 
('Belgian Cuisine', 'Delicious offerings from Belgian cooking'), 
('Asian Cuisine', 'Delicious flavors from across Asia'), 
('Classic Favorites', 'Timeless dishes loved by many'), 
('Cool Summer Treats', 'Refreshing dishes perfect for summer'), 
('Gluten-Free', 'Recipes free of gluten'), 
('Korean Cuisine', 'Authentic Korean flavors and dishes'), 
('Spicy Favorites', 'Dishes packed with spicy goodness'), 
('Vietnamese Cuisine', 'Delicious flavors from Vietnamese cooking'),
('Spicy Sensations', 'Exciting and flavorful spicy dishes'), 
('Seafood Lovers', 'For those who adore seafood delights'), 
('Healthy Dips', 'Nourishing and delicious dip options'), 
('Vegetarian Classics', 'Time-honored vegetarian recipes'), 
('Vegetarian Delights', 'Delectable dishes for vegetarians to enjoy'), 
('Comfort Food Classics', 'Beloved classic comfort food recipes'), 
('Dinner Party Essentials', 'Essential dishes for any dinner party'), 
('Thai Cuisine', 'Authentic and flavorful Thai dishes'), 
('Greek Cuisine', 'Traditional and flavorful Greek recipes'), 
('Classic', 'Timeless and beloved classic recipes');

INSERT INTO themes_recipes (recipe_name, theme_name) VALUES
('Chicken Tikka Masala', 'Indian Cuisine'),
('Chicken Tikka Masala', 'Spicy Delights'),
('Chicken Tikka Masala', 'Comfort Food'),
('Tacos al Pastor', 'Mexican Cuisine'),
('Tacos al Pastor', 'Street Food'),
('Tacos al Pastor', 'Family Favorites'),
('Sushi Rolls', 'Japanese Cuisine'),
('Sushi Rolls', 'Seafood Extravaganza'),
('Sushi Rolls', 'Healthy Choices'),
('Tom Yum Soup', 'Asian Comfort'),
('Tom Yum Soup', 'Spicy Sensations'),
('Tom Yum Soup', 'Healthy Choices'),
('Greek Salad', 'Mediterranean Delights'),
('Greek Salad', 'Healthy Eating'),
('Greek Salad', 'Vegetarian Options'),
('Paella', 'Spanish Cuisine'),
('Paella', 'Seafood Lovers'),
('Paella', 'Dinner Party Favorites'),
('Hummus', 'Middle Eastern Flavors'),
('Hummus', 'Healthy Dips'),
('Hummus', 'Vegetarian Classics'),
('Margherita Pizza', 'Italian Cuisine'),
('Margherita Pizza', 'Vegetarian Delights'),
('Margherita Pizza', 'Family Favorites'),
('Beef Bourguignon', 'French Cuisine'),
('Beef Bourguignon', 'Comfort Food Classics'),
('Beef Bourguignon', 'Dinner Party Essentials'),
('Mapo Tofu', 'Chinese Cuisine'),
('Mapo Tofu', 'Spicy Favorites'),
('Mapo Tofu', 'Vegetarian Options'),
('Chicken Biryani', 'Indian Cuisine'),
('Chicken Biryani', 'Spicy Sensations'),
('Chicken Biryani', 'Family Favorites'),
('Guacamole', 'Mexican Cuisine'),
('Guacamole', 'Healthy Dips'),
('Guacamole', 'Brunch Bonanza'),
('Tempura', 'Japanese Cuisine'),
('Tempura', 'Seafood Lovers'),
('Tempura', 'Quick Lunch Ideas'),
('Pad Thai', 'Thai Cuisine'),
('Pad Thai', 'Spicy Sensations'),
('Pad Thai', 'Classic Favorites'),
('Moussaka', 'Greek Cuisine'),
('Moussaka', 'Comfort Food Classics'),
('Moussaka', 'Family Favorites'),
('Gazpacho', 'Spanish Cuisine'),
('Gazpacho', 'Cool Summer Treats'),
('Gazpacho', 'Vegetarian Delights'),
('Falafel', 'Middle Eastern Flavors'),
('Falafel', 'Vegetarian Classics'),
('Falafel', 'Quick Lunch Ideas'),
('Lasagna', 'Italian Cuisine'),
('Lasagna', 'Comfort Food Classics'),
('Lasagna', 'Family Favorites'),
('Ratatouille', 'French Cuisine'),
('Ratatouille', 'Vegetarian Delights'),
('Ratatouille', 'Healthy Choices'),
('Peking Duck', 'Chinese Cuisine'),
('Peking Duck', 'Dinner Party Essentials'),
('Peking Duck', 'Family Favorites'),
('Palak Paneer', 'Indian Cuisine'),
('Palak Paneer', 'Spicy Sensations'),
('Palak Paneer', 'Comfort Food Classics'),
('Chiles en Nogada', 'Mexican Cuisine'),
('Chiles en Nogada', 'Spicy Sensations'),
('Chiles en Nogada', 'Dinner Party Essentials'),
('Sashimi', 'Japanese Cuisine'),
('Sashimi', 'Seafood Lovers'),
('Sashimi', 'Healthy Choices'),
('Tom Kha Gai', 'Thai Cuisine'),
('Tom Kha Gai', 'Spicy Sensations'),
('Tom Kha Gai', 'Healthy Choices'),
('Dolmades', 'Mediterranean Delights'),
('Dolmades', 'Vegetarian Classics'),
('Dolmades', 'Healthy Choices'),
('Fattoush', 'Mediterranean Delights'),
('Fattoush', 'Vegetarian Classics'),
('Fattoush', 'Healthy Choices'),
('Carbonnade Flamande', 'Belgian Cuisine'),
('Carbonnade Flamande', 'Comfort Food Classics'),
('Carbonnade Flamande', 'Dinner Party Essentials'),
('Tiramisu', 'Italian Cuisine'),
('Tiramisu', 'Dessert Delights'),
('Tiramisu', 'Dinner Party Essentials'),
('Crepes Suzette', 'French Cuisine'),
('Crepes Suzette', 'Dessert Delights'),
('Crepes Suzette', 'Brunch Bonanza'),
('Kung Pao Shrimp', 'Chinese Cuisine'),
('Kung Pao Shrimp', 'Spicy Sensations'),
('Kung Pao Shrimp', 'Seafood Lovers'),
('Butter Chicken', 'Indian Cuisine'),
('Butter Chicken', 'Spicy Sensations'),
('Butter Chicken', 'Comfort Food Classics'),
('Enchiladas', 'Mexican Cuisine'),
('Enchiladas', 'Spicy Sensations'),
('Enchiladas', 'Family Favorites'),
('Tempura Vegetables', 'Japanese Cuisine'),
('Tempura Vegetables', 'Vegetarian Delights'),
('Tempura Vegetables', 'Quick Lunch Ideas'),
('Thai Green Curry', 'Thai Cuisine'),
('Thai Green Curry', 'Spicy Sensations'),
('Thai Green Curry', 'Quick Lunch Ideas'),
('Spanakopita', 'Greek Cuisine'),
('Spanakopita', 'Vegetarian Delights'),
('Spanakopita', 'Brunch Bonanza'),
('Tabbouleh', 'Mediterranean Delights'),
('Tabbouleh', 'Vegetarian Classics'),
('Tabbouleh', 'Healthy Choices'),
('Osso Buco', 'Italian Cuisine'),
('Osso Buco', 'Comfort Food Classics'),
('Osso Buco', 'Dinner Party Essentials'),
('Hot and Sour Soup', 'Chinese Cuisine'),
('Hot and Sour Soup', 'Spicy Sensations'),
('Hot and Sour Soup', 'Quick Lunch Ideas'),
('Paneer Tikka', 'Indian Cuisine'),
('Paneer Tikka', 'Spicy Sensations'),
('Paneer Tikka', 'Quick Lunch Ideas'),
('Chilaquiles', 'Mexican Cuisine'),
('Chilaquiles', 'Spicy Sensations'),
('Chilaquiles', 'Brunch Bonanza'),
('Miso Soup', 'Japanese Cuisine'),
('Miso Soup', 'Vegetarian Delights'),
('Miso Soup', 'Quick Lunch Ideas'),
('Ceviche', 'Latin American Cuisine'),
('Ceviche', 'Seafood Lovers'),
('Ceviche', 'Healthy Choices'),
('Eggplant Parmesan', 'Italian Cuisine'),
('Eggplant Parmesan', 'Vegetarian Delights'),
('Eggplant Parmesan', 'Comfort Food Classics'),
('Vietnamese Spring Rolls', 'Vietnamese Cuisine'),
('Vietnamese Spring Rolls', 'Seafood Lovers'),
('Vietnamese Spring Rolls', 'Healthy Choices'),
('Chicken Korma', 'Indian Cuisine'),
('Chicken Korma', 'Spicy Sensations'),
('Chicken Korma', 'Comfort Food Classics'),
('Caprese Pizza', 'Italian Cuisine'),
('Caprese Pizza', 'Vegetarian Delights'),
('Caprese Pizza', 'Brunch Bonanza'),
('Gyoza', 'Japanese Cuisine'),
('Gyoza', 'Quick Lunch Ideas'),
('Gyoza', 'Family Favorites'),
('Pasta Primavera', 'Italian Cuisine'),
('Pasta Primavera', 'Vegetarian Delights'),
('Pasta Primavera', 'Quick Lunch Ideas'),
('Pasta Primavera', 'Family Favorites'),
('Tofu Curry', 'Asian Cuisine'),
('Tofu Curry', 'Spicy Sensations'),
('Tofu Curry', 'Healthy Choices'),
('Pho', 'Street Food'),
('Pho', 'Asian Comfort'),
('Pho', 'Healthy Choices'),
('Banh Mi', 'Street Food'),
('Banh Mi', 'Asian Comfort'),
('Banh Mi', 'Quick Lunch Ideas'),
('Spring Rolls', 'Street Food'),
('Spring Rolls', 'Asian Comfort'),
('Spring Rolls', 'Healthy Choices'),
('Beef Stew', 'Comfort Food'),
('Beef Stew', 'Family Favorites'),
('Beef Stew', 'Classic'),
('Apple Pie', 'Comfort Food'),
('Apple Pie', 'Family Favorites'),
('Apple Pie', 'Dessert Delights'),
('BBQ Ribs', 'Comfort Food'),
('BBQ Ribs', 'Family Favorites'),
('BBQ Ribs', 'Classic'),
('Feijoada', 'Comfort Food'),
('Feijoada', 'Family Favorites'),
('Feijoada', 'Latin American Cuisine'),
('Pão de Queijo', 'Comfort Food'),
('Pão de Queijo', 'Family Favorites'),
('Pão de Queijo', 'Gluten-Free'),
('Brigadeiro', 'Dessert Delights'),
('Brigadeiro', 'Comfort Food'),
('Brigadeiro', 'Family Favorites'),
('Kimchi', 'Spicy Delights'),
('Kimchi', 'Street Food'),
('Kimchi', 'Korean Cuisine'),
('Bibimbap', 'Asian Comfort'),
('Bibimbap', 'Family Favorites'),
('Bibimbap', 'Healthy Choices'),
('Bulgogi', 'Asian Comfort'),
('Bulgogi', 'Family Favorites'),
('Bulgogi', 'Quick Lunch Ideas'),
('Doro Wat', 'Comfort Food'),
('Doro Wat', 'Family Favorites'),
('Doro Wat', 'African Cuisine'),
('Injera', 'Comfort Food'),
('Injera', 'Family Favorites'),
('Injera', 'African Cuisine'),
('Kitfo', 'Comfort Food'),
('Kitfo', 'Family Favorites'),
('Kitfo', 'African Cuisine'),
('Coq au Vin', 'French Cuisine'),
('Coq au Vin', 'Comfort Food Classics'),
('Coq au Vin', 'Dinner Party Essentials'),
('Kung Pao Chicken', 'Chinese Cuisine'),
('Kung Pao Chicken', 'Spicy Favorites'),
('Kung Pao Chicken', 'Quick Lunch Ideas'),
('Lamb Tagine', 'Middle Eastern Flavors'),
('Lamb Tagine', 'Comfort Food Classics'),
('Lamb Tagine', 'Family Favorites'),
('Tortilla Española', 'Spanish Cuisine'),
('Tortilla Española', 'Comfort Food Classics'),
('Tortilla Española', 'Family Favorites'),
('Spaghetti Carbonara', 'Italian Cuisine'),
('Spaghetti Carbonara', 'Comfort Food Classics'),
('Spaghetti Carbonara', 'Family Favorites'),
('Shakshuka', 'Middle Eastern Flavors'),
('Shakshuka', 'Brunch Bonanza'),
('Shakshuka', 'Healthy Choices');

INSERT INTO recipes_ingredients (recipe_name, ingredient_name, quantity_gr, quantity_approx)
VALUES
('Spaghetti Carbonara', 'Spaghetti', 200, NULL),
('Spaghetti Carbonara', 'Egg', NULL, '3'),
('Spaghetti Carbonara', 'Parmesan cheese', 50, NULL),
('Spaghetti Carbonara', 'Bacon', 100, NULL),
('Coq au Vin', 'Chicken', 1000, NULL),
('Coq au Vin', 'Red wine', 500, NULL),
('Coq au Vin', 'Onion', 200, NULL),
('Coq au Vin', 'Carrots', 100, NULL),
('Kung Pao Chicken', 'Chicken', 500, NULL),
('Kung Pao Chicken', 'Peanuts', 100, NULL),
('Kung Pao Chicken', 'Bell peppers', 150, NULL),
('Kung Pao Chicken', 'Green onions', NULL, '2 stalks'),
('Chicken Tikka Masala', 'Chicken', 600, NULL),
('Chicken Tikka Masala', 'Tomato sauce', 500, NULL),
('Chicken Tikka Masala', 'Yogurt', 100, NULL),
('Chicken Tikka Masala', 'Ginger garlic paste', NULL, '1 tablespoon'),
('Tacos al Pastor', 'Pork', 800, NULL),
('Tacos al Pastor', 'Pineapple', 200, NULL),
('Tacos al Pastor', 'Cilantro', 50, NULL),
('Tacos al Pastor', 'Onion', NULL, '1 small'),
('Sushi Rolls', 'Rice', 300, NULL),
('Sushi Rolls', 'Nori (seaweed)', NULL, '100 sheets'),
('Sushi Rolls', 'Avocado', 100, NULL),
('Sushi Rolls', 'Cucumber', 50, NULL),
('Tom Yum Soup', 'Shrimp', 400, NULL),
('Tom Yum Soup', 'Lemongrass', 50, NULL),
('Tom Yum Soup', 'Mushrooms', 100, NULL),
('Tom Yum Soup', 'Thai chilies', 10, NULL),
('Greek Salad', 'Tomato', 300, NULL),
('Greek Salad', 'Cucumber', 200, NULL),
('Greek Salad', 'Feta cheese', 100, NULL),
('Greek Salad', 'Kalamata olives', 50, NULL),
('Paella', 'Rice', 400, NULL),
('Paella', 'Chicken', 600, NULL),
('Paella', 'Bell peppers', 150, NULL),
('Paella', 'Saffron', NULL, 'a pinch'),
('Hummus', 'Chickpeas', 400, NULL),
('Hummus', 'Tahini', 100, NULL),
('Hummus', 'Lemon juice', 50, NULL),
('Hummus', 'Garlic', NULL, '2 cloves'),
('Margherita Pizza', 'Pizza dough', 300, NULL),
('Margherita Pizza', 'Mozzarella cheese', 200, NULL),
('Margherita Pizza', 'Fresh basil', 50, NULL),
('Margherita Pizza', 'Tomatoes', 100, NULL),
('Beef Bourguignon', 'Beef', 800, NULL),
('Beef Bourguignon', 'Red wine', 500, NULL),
('Beef Bourguignon', 'Carrots', 100, NULL),
('Beef Bourguignon', 'Beef broth', NULL, '1 cup'),
('Mapo Tofu', 'Tofu', 500, NULL),
('Mapo Tofu', 'Ground pork', 300, NULL),
('Mapo Tofu', 'Sichuan peppercorns', NULL, 'a few'),
('Mapo Tofu', 'Green onions', NULL, '2 stalks'),
('Chicken Biryani', 'Chicken', 600, NULL),
('Chicken Biryani', 'Basmati rice', 400, NULL),
('Chicken Biryani', 'Yogurt', 100, NULL),
('Chicken Biryani', 'Garam masala', NULL, '1 tablespoon'),
('Guacamole', 'Avocado', 400, NULL),
('Guacamole', 'Tomato', 200, NULL),
('Guacamole', 'Red onion', NULL, 'half'),
('Guacamole', 'Lime juice', NULL, '1 lime'),
('Tempura', 'Seafood', 500, NULL),
('Tempura', 'Vegetables', 300, NULL),
('Tempura', 'Tempura batter', 100, NULL),
('Tempura', 'Soy sauce', NULL, '1/4 cup'),
('Pad Thai', 'Noodles', 300, NULL),
('Pad Thai', 'Shrimp', 400, NULL),
('Pad Thai', 'Bean sprouts', 100, NULL),
('Pad Thai', 'Tamarind paste', NULL, '1 tablespoon'),
('Moussaka', 'Eggplant', 500, NULL),
('Moussaka', 'Ground lamb', 400, NULL),
('Moussaka', 'Tomatoes', 200, NULL),
('Moussaka', 'Potatoes', 200, NULL),
('Gazpacho', 'Tomato', 300, NULL),
('Gazpacho', 'Cucumber', 200, NULL),
('Gazpacho', 'Red bell pepper', 100, NULL),
('Gazpacho', 'Red onion', NULL, '1/2'),
('Falafel', 'Chickpeas', 400, NULL),
('Falafel', 'Cilantro', 100, NULL),
('Falafel', 'Garlic', NULL, '3 cloves'),
('Falafel', 'Cumin', NULL, '1 teaspoon'),
('Lasagna', 'Pasta', 400, NULL),
('Lasagna', 'Ground beef', 500, NULL),
('Lasagna', 'Ricotta cheese', 200, NULL),
('Lasagna', 'Tomato sauce', 200, NULL),
('Ratatouille', 'Eggplant', 300, NULL),
('Ratatouille', 'Zucchini', 300, NULL),
('Ratatouille', 'Bell peppers', 100, NULL),
('Ratatouille', 'Tomatoes', 100, NULL),
('Peking Duck', 'Duck', 1000, NULL),
('Peking Duck', 'Hoisin sauce', 200, NULL),
('Peking Duck', 'Green onions', NULL, '2 stalks'),
('Peking Duck', 'Cucumber', NULL, '1/2'),
('Palak Paneer', 'Spinach', 500, NULL),
('Palak Paneer', 'Paneer cheese', 300, NULL),
('Palak Paneer', 'Garlic', NULL, '3 cloves'),
('Palak Paneer', 'Ginger', NULL, '1 inch piece'),
('Chiles en Nogada', 'Poblano peppers', 600, NULL),
('Chiles en Nogada', 'Walnuts', 100, NULL),
('Chiles en Nogada', 'Pomegranate seeds', NULL, '1/4 cup'),
('Chiles en Nogada', 'Apple', NULL, '1 small'),
('Sashimi', 'Fish', 500, NULL),
('Sashimi', 'Soy sauce', 100, NULL),
('Sashimi', 'Wasabi', NULL, '1 teaspoon'),
('Sashimi', 'Pickled ginger', NULL, '1 tablespoon'),
('Tom Kha Gai', 'Chicken', 600, NULL),
('Tom Kha Gai', 'Coconut milk', 400, NULL),
('Tom Kha Gai', 'Galangal', NULL, '2 slices'),
('Tom Kha Gai', 'Kaffir lime leaves', 10, NULL),
('Dolmades', 'Grape leaves', 300, NULL),
('Dolmades', 'Rice', 200, NULL),
('Dolmades', 'Lemon juice', NULL, '2 tablespoons'),
('Dolmades', 'Dill', NULL, '2 tablespoons'),
('Fattoush', 'Mixed greens', 300, NULL),
('Fattoush', 'Pita chips', 100, NULL),
('Fattoush', 'Radishes', NULL, '4'),
('Fattoush', 'Sumac', NULL, '1 teaspoon'),
('Carbonnade Flamande', 'Beef', 800, NULL),
('Carbonnade Flamande', 'Beer', 500, NULL),
('Carbonnade Flamande', 'Onions', 200, NULL),
('Carbonnade Flamande', 'Brown sugar', NULL, '2 tablespoons'),
('Carbonnade Flamande', 'Mustard', NULL, '1 tablespoon'),
('Carbonnade Flamande', 'Thyme', NULL, '1 tablespoon'),
('Tiramisu', 'Ladyfingers', 300, NULL),
('Tiramisu', 'Mascarpone cheese', 200, NULL),
('Tiramisu', 'Cocoa powder', NULL, '2 tablespoons'),
('Tiramisu', 'Espresso', NULL, '1/4 cup'),
('Tiramisu', 'Marsala wine', NULL, '1/4 cup'),
('Tiramisu', 'Milk', NULL, '1/2 cup'),
('Crepes Suzette', 'Flour', 300, NULL),
('Crepes Suzette', 'Oranges', 200, NULL),
('Crepes Suzette', 'Grand Marnier', NULL, '1/4 cup'),
('Crepes Suzette', 'Butter', NULL, '1/4 cup'),
('Kung Pao Shrimp', 'Shrimp', 400, NULL),
('Kung Pao Shrimp', 'Bell peppers', 200, NULL),
('Kung Pao Shrimp', 'Green onions', NULL, '2 stalks'),
('Kung Pao Shrimp', 'Ginger', NULL, '1 inch piece'),
('Butter Chicken', 'Chicken', 600, NULL),
('Butter Chicken', 'Butter', 100, NULL),
('Butter Chicken', 'Cream', NULL, '1/2 cup'),
('Butter Chicken', 'Kashmiri chili powder', NULL, '1 teaspoon'),
('Butter Chicken', 'Kasuri methi (dried fenugreek leaves)', NULL, '1 teaspoon'),
('Butter Chicken', 'Garam masala', NULL, '1 teaspoon'),
('Enchiladas', 'Tortillas', 300, NULL),
('Enchiladas', 'Cheese', 200, NULL),
('Enchiladas', 'Enchilada sauce', NULL, '1 cup'),
('Enchiladas', 'Black olives', 50, NULL),
('Enchiladas', 'Green chilies', NULL, '2'),
('Enchiladas', 'Black beans', NULL, '1/2 cup'),
('Tempura Vegetables', 'Vegetables', 400, NULL),
('Tempura Vegetables', 'Tempura batter', 100, NULL),
('Tempura Vegetables', 'Soy sauce', NULL, '1/4 cup'),
('Tempura Vegetables', 'Rice vinegar', NULL, '2 tablespoons'),
('Thai Green Curry', 'Chicken', 600, NULL),
('Thai Green Curry', 'Coconut milk', 400, NULL),
('Thai Green Curry', 'Green curry paste', NULL, '2 tablespoons'),
('Thai Green Curry', 'Thai basil', NULL, '1/4 cup'),
('Spanakopita', 'Spinach', 500, NULL),
('Spanakopita', 'Feta cheese', 200, NULL),
('Spanakopita', 'Dill', NULL, '2 tablespoons'),
('Spanakopita', 'Phyllo dough', 200, NULL),
('Spanakopita', 'Onion', 100, NULL),
('Spanakopita', 'Nutmeg', NULL, '1 teaspoon'),
('Tabbouleh', 'Parsley', 300, NULL),
('Tabbouleh', 'Bulgur wheat', 200, NULL),
('Tabbouleh', 'Tomatoes', 100, NULL),
('Tabbouleh', 'Mint leaves', NULL, '1/4 cup'),
('Osso Buco', 'Veal shanks', 800, NULL),
('Osso Buco', 'White wine', 500, NULL),
('Osso Buco', 'Carrots', 100, NULL),
('Osso Buco', 'Celery', 100, NULL),
('Hot and Sour Soup', 'Tofu', 300, NULL),
('Hot and Sour Soup', 'Mushrooms', 200, NULL),
('Hot and Sour Soup', 'Black vinegar', NULL, '2 tablespoons'),
('Hot and Sour Soup', 'White pepper', NULL, '1 teaspoon'),
('Paneer Tikka', 'Paneer cheese', 300, NULL),
('Paneer Tikka', 'Yogurt', 200, NULL),
('Paneer Tikka', 'Tandoori masala', NULL, '2 tablespoons'),
('Paneer Tikka', 'Lemon juice', NULL, '1 lemon'),
('Chilaquiles', 'Tortillas', 300, NULL),
('Chilaquiles', 'Salsa', 200, NULL),
('Chilaquiles', 'Cilantro', NULL, '1/4 cup'),
('Chilaquiles', 'Cotija cheese', NULL, '1/4 cup'),
('Miso Soup', 'Tofu', 300, NULL),
('Miso Soup', 'Seaweed', 100, NULL),
('Miso Soup', 'Green onions', NULL, '2 stalks'),
('Miso Soup', 'Bonito flakes', NULL, 'a few'),
('Miso Soup', 'Silken tofu', NULL, '1 block'),
('Miso Soup', 'Mirin', NULL, '2 tablespoons'),
('Ceviche', 'Fish', 500, NULL),
('Ceviche', 'Lime juice', 200, NULL),
('Ceviche', 'Red onion', NULL, '1/2'),
('Ceviche', 'Cilantro', NULL, '1/4 cup'),
('Eggplant Parmesan', 'Eggplant', 500, NULL),
('Eggplant Parmesan', 'Tomato sauce', 300, NULL),
('Eggplant Parmesan', 'Mozzarella cheese', 100, NULL),
('Eggplant Parmesan', 'Breadcrumbs', NULL, '1/4 cup'),
('Vietnamese Spring Rolls', 'Shrimp', 400, NULL),
('Vietnamese Spring Rolls', 'Rice vermicelli', 200, NULL),
('Vietnamese Spring Rolls', 'Mint leaves', NULL, '1/4 cup'),
('Vietnamese Spring Rolls', 'Rice paper', NULL, '20 sheets'),
('Chicken Korma', 'Chicken', 600, NULL),
('Chicken Korma', 'Yogurt', 200, NULL),
('Chicken Korma', 'Cashews', NULL, '1/4 cup'),
('Chicken Korma', 'Ghee', NULL, '2 tablespoons'),
('Caprese Pizza', 'Pizza dough', 300, NULL),
('Caprese Pizza', 'Tomatoes', 200, NULL),
('Caprese Pizza', 'Basil leaves', NULL, '1/4 cup'),
('Caprese Pizza', 'Balsamic glaze', NULL, '2 tablespoons'),
('Gyoza', 'Pork', 400, NULL),
('Gyoza', 'Cabbage', 200, NULL),
('Gyoza', 'Soy sauce', NULL, '1/4 cup'),
('Gyoza', 'Sesame oil', NULL, '1 teaspoon'),
('Pasta Primavera', 'Pasta', 300, NULL),
('Pasta Primavera', 'Mixed vegetables', 200, NULL),
('Pasta Primavera', 'Parmesan cheese', NULL, '1/4 cup'),
('Pasta Primavera', 'Heavy cream', NULL, '1/2 cup'),
('Tofu Curry', 'Tofu', 400, NULL),
('Tofu Curry', 'Coconut milk', 200, NULL),
('Tofu Curry', 'Curry powder', NULL, '2 tablespoons'),
('Tofu Curry', 'Red bell pepper', 100, NULL),
('Pho', 'Beef', 500, NULL),
('Pho', 'Rice Noodles', 200, NULL),
('Pho', 'Ginger', 50, NULL),
('Pho', 'Cinnamon Stick', 5, NULL),
('Banh Mi', 'Baguette', 200, NULL),
('Banh Mi', 'Pork', 150, NULL),
('Banh Mi', 'Pickled Carrots', 50, NULL),
('Banh Mi', 'Cilantro', 10, NULL),
('Spring Rolls', 'Rice Paper', 100, NULL),
('Spring Rolls', 'Shrimp', 150, NULL),
('Spring Rolls', 'Vermicelli Noodles', 50, NULL),
('Spring Rolls', 'Mint', 10, NULL),
('Beef Stew', 'Beef', 800, NULL),
('Beef Stew', 'Potatoes', 300, NULL),
('Beef Stew', 'Carrots', 200, NULL),
('Beef Stew', 'Onions', 100, NULL),
('Apple Pie', 'Apples', 500, NULL),
('Apple Pie', 'Flour', 200, NULL),
('Apple Pie', 'Butter', 100, NULL),
('Apple Pie', 'Sugar', 150, NULL),
('BBQ Ribs', 'Pork Ribs', 1000, NULL),
('BBQ Ribs', 'BBQ Sauce', 200, NULL),
('BBQ Ribs', 'Garlic Powder', 10, NULL),
('BBQ Ribs', 'Onion Powder', 10, NULL),
('Feijoada', 'Black Beans', 500, NULL),
('Feijoada', 'Pork', 400, NULL),
('Feijoada', 'Chorizo', 200, NULL),
('Feijoada', 'Garlic', 20, NULL),
('Pão de Queijo', 'Tapioca Flour', 250, NULL),
('Pão de Queijo', 'Milk', 200, NULL),
('Pão de Queijo', 'Parmesan Cheese', 100, NULL),
('Pão de Queijo', 'Eggs', NULL, 2),
('Brigadeiro', 'Condensed Milk', 400, NULL),
('Brigadeiro', 'Cocoa Powder', 50, NULL),
('Brigadeiro', 'Butter', 30, NULL),
('Brigadeiro', 'Chocolate Sprinkles', 100, NULL),
('Kimchi', 'Napa Cabbage', 1000, NULL),
('Kimchi', 'Salt', 50, NULL),
('Kimchi', 'Gochugaru', 30, NULL),
('Kimchi', 'Garlic', 20, NULL),
('Bibimbap', 'Rice', 200, NULL),
('Bibimbap', 'Beef', 150, NULL),
('Bibimbap', 'Spinach', 50, NULL),
('Bibimbap', 'Carrot', 50, NULL),
('Bulgogi', 'Beef', 500, NULL),
('Bulgogi', 'Soy Sauce', 50, NULL),
('Bulgogi', 'Sugar', 30, NULL),
('Bulgogi', 'Garlic', 20, NULL),
('Doro Wat', 'Chicken', 1000, NULL),
('Doro Wat', 'Berbere Spice', 30, NULL),
('Doro Wat', 'Onions', 200, NULL),
('Doro Wat', 'Garlic', 20, NULL),
('Injera', 'Teff Flour', 300, NULL),
('Injera', 'Water', 200, NULL),
('Injera', 'Salt', 10, NULL),
('Injera', 'Yeast', 5, NULL),
('Kitfo', 'Beef', 500, NULL),
('Kitfo', 'Clarified Butter', 100, NULL),
('Kitfo', 'Mitmita Spice', 10, NULL),
('Kitfo', 'Salt', 10, NULL),
('Tortilla Española', 'Egg', 300, NULL),
('Tortilla Española', 'Potato', 300, NULL),
('Tortilla Española', 'Olive Oil', 30, NULL),
('Tortilla Española', 'Onion', 100, NULL),
('Tortilla Española', 'Bell Peppers', 100, NULL),
('Lamb Tagine', 'Lamb', 1000, NULL),
('Lamb Tagine', 'Cumin', 5, NULL),
('Lamb Tagine', 'Paprika', 5, NULL),
('Lamb Tagine', 'Turmeric', 3, NULL),
('Lamb Tagine', 'Onion', 150, NULL),
('Lamb Tagine', 'Garlic', 20, NULL),
('Lamb Tagine', 'Tomato', 200, NULL),
('Lamb Tagine', 'Olive Oil', 30, NULL),
('Lamb Tagine', 'Bell Peppers', 100, NULL),
('Shakshuka', 'Tomato', 400, NULL),
('Shakshuka', 'Onion', 100, NULL),
('Shakshuka', 'Garlic', 20, NULL),
('Shakshuka', 'Egg', 4, NULL),
('Shakshuka', 'Olive Oil', 30, NULL),
('Apple Pie', 'Apple', NULL, '5'),
('Kimchi', 'Cabbage', NULL, '1'),
('Pão de Queijo', 'Cheese', 500, NULL),
('Paneer Tikka', 'Paneer', 500, NULL),
('Osso Buco', 'Veal', 1000, NULL),
('Ratatouille', 'Vegetables', NULL, 'a lot of');

INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (1, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (2, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (3, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (4, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (4, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (5, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (5, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (5, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (6, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (6, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (7, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (7, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (7, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (8, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (8, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (8, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (8, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (9, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (10, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (11, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (12, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (12, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (12, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (12, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (12, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (12, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (12, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (13, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (14, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (15, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (16, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (16, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (16, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (17, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (17, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (17, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (17, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (17, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (17, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (17, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (18, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (19, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (20, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (21, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (22, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (23, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (24, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (25, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (26, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (27, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (28, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (28, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (29, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (30, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (31, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (31, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (31, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (32, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (33, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (34, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (35, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (36, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (37, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (38, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (39, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (39, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (40, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (40, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (40, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (40, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (40, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (41, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (42, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (43, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (44, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (44, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (44, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (44, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (45, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (45, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (45, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (45, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (46, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (46, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (46, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (46, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (46, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (46, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (46, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Korean');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (47, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (48, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (48, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Vietnamese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Greek');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Israeli');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'French');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Spanish');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Mexican');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (49, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Thai');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Lebanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Indian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Japanese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Ethiopian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Moroccan');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Latin American');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Italian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Chinese');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Brazilian');
INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES (50, 'Vietnamese');

INSERT INTO national_cuisine (cuisine_name) VALUES
('Turkish'),
('Russian');

-- Inserting into recipes table
INSERT INTO recipes (recipe_name, short_desc, difficulty_level, tip1, tip2, tip3, prep_time, cooking_time, quantities, main_ingredient)
VALUES ('Turkish Lamb Kebab', 'Delicious lamb kebabs with Turkish spices', '3', 'Use fresh herbs for better flavor', 'Marinate overnight for best results', NULL, '00:30:00', '00:45:00', 4, 'Lamb'),
       ('Russian Beef Stroganoff', 'Classic Russian dish with creamy sauce', '4', 'Use tender beef cuts for best texture', 'Cook the mushrooms separately for better flavor', 'Serve with mashed potatoes or noodles', '00:20:00', '00:35:00', 4, 'Beef');

-- Inserting into recipes_equipment table
INSERT INTO recipes_equipment (recipe_name, equipment_name)
VALUES ('Turkish Lamb Kebab', 'Grill'),
       ('Russian Beef Stroganoff', 'Frying Pan'),
       ('Russian Beef Stroganoff', 'Knife');

-- Inserting into steps table
INSERT INTO steps (step_description, step_number, recipe_name)
VALUES ('Prepare marinade with spices', 1, 'Turkish Lamb Kebab'),
       ('Marinate lamb overnight', 2, 'Turkish Lamb Kebab'),
       ('Skewer the lamb pieces', 3, 'Turkish Lamb Kebab'),
       ('Grill the lamb skewers', 4, 'Turkish Lamb Kebab'),
       ('Slice the beef into strips', 1, 'Russian Beef Stroganoff'),
       ('Cook onions and mushrooms', 2, 'Russian Beef Stroganoff'),
       ('Add beef and cook until browned', 3, 'Russian Beef Stroganoff'),
       ('Stir in sour cream and simmer', 4, 'Russian Beef Stroganoff');

-- Inserting into recipes_ingredients table
INSERT INTO recipes_ingredients (recipe_name, ingredient_name, quantity_gr, quantity_approx)
VALUES ('Turkish Lamb Kebab', 'Lamb', 800, NULL),
       ('Turkish Lamb Kebab', 'Onion', 200, NULL),
       ('Turkish Lamb Kebab', 'Garlic', 10, '2 cloves'),
       ('Turkish Lamb Kebab', 'Cumin', 5, NULL),
       ('Russian Beef Stroganoff', 'Beef', 600, NULL),
       ('Russian Beef Stroganoff', 'Onion', 150, NULL),
       ('Russian Beef Stroganoff', 'Mushroom', 200, NULL),
       ('Russian Beef Stroganoff', 'Cream', 150, NULL);

-- Inserting into cuisine_recipe table
INSERT INTO cuisine_recipe (recipe_name, cuisine_name)
VALUES ('Turkish Lamb Kebab', 'Turkish'),
       ('Russian Beef Stroganoff', 'Russian');

-- Inserting into nutrition_information table
INSERT INTO nutrition_information (recipe_name, gram_fat, gram_prot, gram_carbo, calories)
VALUES ('Turkish Lamb Kebab', 50, 60, 10, NULL),
       ('Russian Beef Stroganoff', 40, 50, 20, NULL);

-- Inserting into tag_recipe table
INSERT INTO tag_recipe (recipe_name, tag_name)
VALUES ('Turkish Lamb Kebab', 'family meal'),
       ('Turkish Lamb Kebab', 'comfort food'),
       ('Russian Beef Stroganoff', 'family meal'),
       ('Russian Beef Stroganoff', 'comfort food');

-- Inserting into meal_recipe table
INSERT INTO meal_recipe (recipe_name, meal_name)
VALUES ('Turkish Lamb Kebab', 'Dinner'),
       ('Russian Beef Stroganoff', 'Dinner');

-- Inserting into themes_recipes table
INSERT INTO themes_recipes (recipe_name, theme_name)
VALUES ('Turkish Lamb Kebab', 'Mediterranean Delights'),
       ('Russian Beef Stroganoff', 'Classic');

INSERT INTO cook_cuisine (cook_id, cuisine_name) VALUES
(5, 'Turkish'),
(12, 'Turkish'),
(39, 'Turkish'),
(8, 'Russian'),
(25, 'Russian'),
(47, 'Russian');



