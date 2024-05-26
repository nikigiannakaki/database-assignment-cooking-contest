 set @@sql_mode = 'ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

DROP SCHEMA IF EXISTS cooking;
CREATE SCHEMA cooking;
USE cooking;

CREATE TABLE equipment (
    equipment_name VARCHAR(50) NOT NULL PRIMARY KEY,
    instructions VARCHAR(100) NOT NULL
);

CREATE TABLE food_groups (
    group_name ENUM('Vegetables', 'Fruits', 'Cereal and Potatoes', 'Milk and Dairy Products', 'Legumes', 'Red Meat', 'White Meat', 'Eggs', 'Fish and Seafood', 'Added fats and oils, olives and nuts') PRIMARY KEY,
    group_description VARCHAR(200) NOT NULL
);

CREATE TABLE national_cuisine (
    cuisine_name VARCHAR(30) NOT NULL PRIMARY KEY
);

CREATE TABLE tags(
    tag_name VARCHAR(30) NOT NULL PRIMARY KEY
);

CREATE TABLE themes (
    theme_name VARCHAR(30) NOT NULL PRIMARY KEY, 
    theme_desc VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS episodes (
  episode_id int(11) NOT NULL AUTO_INCREMENT,
  season int(11) NOT NULL,
  number_of_episode int(11) NOT NULL,
  winner INT(11) NOT NULL,
  PRIMARY KEY (episode_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE ingredients (
    ingredient_name VARCHAR(50) NOT NULL PRIMARY KEY,
    calories_per_gram DEMICAL(1,1),
    group_name ENUM('Vegetables', 'Fruits', 'Cereal and Potatoes', 'Milk and Dairy Products', 'Legumes', 'Red Meat', 'White Meat', 'Eggs', 'Fish and Seafood', 'Added fats and oils, olives and nuts'),
    CONSTRAINT food_groups_fk_3 FOREIGN KEY (group_name) REFERENCES food_groups (group_name)
);

CREATE TABLE recipes (
    recipe_name VARCHAR(50) NOT NULL PRIMARY KEY,
    short_desc VARCHAR(200) NOT NULL,
    difficulty_level ENUM('1','2','3','4','5') NOT NULL,
    tip1 VARCHAR(200),
    tip2 VARCHAR(200),
    tip3 VARCHAR(200),
    prep_time TIME NOT NULL,
    cooking_time TIME NOT NULL,
    quantities INT NOT NULL,
    main_ingredient VARCHAR(50) NOT NULL,
    CONSTRAINT ingredients_fk_2 FOREIGN KEY (main_ingredient) REFERENCES ingredients (ingredient_name)
);

CREATE TABLE recipes_equipment (
    recipe_name VARCHAR(50) NOT NULL,
    equipment_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (recipe_name, equipment_name),
    CONSTRAINT recipes_fk_1 FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    CONSTRAINT equipment_fk FOREIGN KEY (equipment_name) REFERENCES equipment (equipment_name)
);

CREATE TABLE steps (
    step_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    step_description VARCHAR(50) NOT NULL,
    step_number INT NOT NULL,
    recipe_name VARCHAR(50) NOT NULL,
    CONSTRAINT recipes_fk_2 FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name)
);

CREATE TABLE recipes_ingredients(
    recipe_name VARCHAR(50) NOT NULL,
    ingredient_name VARCHAR(50) NOT NULL,
    quantity_gr INT,
    quantity_approx VARCHAR(30),
    PRIMARY KEY (recipe_name, ingredient_name),
    CONSTRAINT recipes_fk_3 FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    CONSTRAINT ingredients_fk_1 FOREIGN KEY (ingredient_name) REFERENCES ingredients (ingredient_name),
    CONSTRAINT check_either_not_null CHECK (
        (quantity_gr IS NOT NULL AND quantity_approx IS NULL) OR
        (quantity_gr IS NULL AND quantity_approx IS NOT NULL))
);

CREATE TABLE cuisine_recipe (
    recipe_name VARCHAR(50) NOT NULL,
    cuisine_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (recipe_name, cuisine_name),
    CONSTRAINT cuisine_recipes_recipes FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    CONSTRAINT cuisine_recipes_cuisine FOREIGN KEY (cuisine_name) REFERENCES national_cuisine (cuisine_name)
);

CREATE TABLE nutrition_information(
    info_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    recipe_name VARCHAR(50) NOT NULL,
    gram_fat INT,
    gram_prot INT,
    gram_carbo INT,
    calories INT,
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name)
);

CREATE TABLE tag_recipe(
    recipe_name VARCHAR(50) NOT NULL,
    tag_name VARCHAR(30) NOT NULL,
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    FOREIGN KEY (tag_name) REFERENCES tags(tag_name)
);

CREATE TABLE meal_recipe(
    recipe_name VARCHAR(50) NOT NULL,
    meal_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (recipe_name, meal_name),
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name)
);

CREATE TABLE themes_recipes (
    recipe_name VARCHAR(50) NOT NULL,
    theme_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (recipe_name, theme_name),
    CONSTRAINT recipes_fk_7 FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    CONSTRAINT themes_fk_6 FOREIGN KEY (theme_name) REFERENCES themes(theme_name)
);


CREATE TABLE cook (
    cook_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    cook_phone_number VARCHAR(10) NOT NULL,
    cook_birthday DATE NOT NULL,
    age_in_years INT NOT NULL,
    cook_working_years INT NOT NULL,
    professional_level ENUM('C cook', 'B cook', 'A cook', 'chef assistant', 'chef') NOT NULL,
    CONSTRAINT phone_number CHECK (LENGTH(cook_phone_number) = 10 AND cook_phone_number REGEXP '^[0-9]+$')
);

CREATE TABLE cook_cuisine (
    cook_id INT NOT NULL,
    cuisine_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (cook_id, cuisine_name),
    CONSTRAINT cook_cuisine_cook FOREIGN KEY (cook_id) REFERENCES cook (cook_id),
    CONSTRAINT cook_cuisine_cuisine FOREIGN KEY (cuisine_name) REFERENCES national_cuisine (cuisine_name)
);

CREATE TABLE recipe_specialization (
    recipe_name VARCHAR(30) NOT NULL,
    cook_id INT NOT NULL,
    CONSTRAINT recipe_fk4 FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    CONSTRAINT cook_fk2 FOREIGN KEY (cook_id) REFERENCES cook (cook_id),
    PRIMARY KEY (recipe_name, cook_id)
);

CREATE TABLE judge (
    judge_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    episode_id INT NOT NULL,
    cook_id INT NOT NULL,
    CONSTRAINT episode_fk1 FOREIGN KEY (episode_id) REFERENCES episodes (episode_id),
    CONSTRAINT cook_fk3 FOREIGN KEY (cook_id) REFERENCES cook (cook_id)
);

CREATE TABLE contestant (
    contestant_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    episode_id INT NOT NULL,
    cook_id INT NOT NULL,
    recipe_name VARCHAR(50) NOT NULL,
    national_cuisine VARCHAR(30) NOT NULL,
    CONSTRAINT episode_fk2 FOREIGN KEY (episode_id) REFERENCES episodes (episode_id),
    CONSTRAINT cook_fk4 FOREIGN KEY (cook_id) REFERENCES cook (cook_id),
    CONSTRAINT recipe_fk5 FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    CONSTRAINT national_cuisine_fk1 FOREIGN KEY (national_cuisine) REFERENCES national_cuisine (cuisine_name)
);

CREATE TABLE episode_cuisine (
    episode_id INT NOT NULL,
    cuisine_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (episode_id, cuisine_name),
    CONSTRAINT episode_cuisine_episode FOREIGN KEY (episode_id) REFERENCES episodes (episode_id),
    CONSTRAINT episode_cuisine_cuisine FOREIGN KEY (cuisine_name) REFERENCES national_cuisine (cuisine_name)
);

CREATE TABLE episode_recipe (
    recipe_name VARCHAR(50) NOT NULL,
    episode_id INT NOT NULL,
    PRIMARY KEY (recipe_name, episode_id),
    CONSTRAINT episode_recipes_recipes FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    CONSTRAINT episode_recipes_episode FOREIGN KEY (episode_id) REFERENCES episodes (episode_id)
); 

CREATE TABLE grades (
    grade_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    grade ENUM('1','2','3','4','5') NOT NULL,
    contestant_id INT NOT NULL ,
    judge_id INT NOT NULL,
    episode_id INT NOT NULL,
    CONSTRAINT episode_fk3 FOREIGN KEY (episode_id) REFERENCES episodes (episode_id),
    CONSTRAINT judge_fk FOREIGN KEY (judge_id) REFERENCES judge (judge_id),
    CONSTRAINT contestant_fk FOREIGN KEY (contestant_id) REFERENCES contestant (contestant_id)
);
