DROP DATABASE IF EXISTS `cooking_contest`;
CREATE DATABASE `cooking_contest` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `cooking_contest`;

CREATE TABLE `cook` (
  `cook_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `cook_phone_number` varchar(10) NOT NULL,
  `cook_birthday` date NOT NULL,
  `age_in_years` int(11) NOT NULL,
  `cook_working_years` int(11) NOT NULL,
  `professional_level` enum('C cook','B cook','A cook','chef assistant','chef') NOT NULL,
  `active_status` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cook_id`),
  UNIQUE (`cook_phone_number`),
  CONSTRAINT `phone_number` CHECK (octet_length(`cook_phone_number`) = 10 and `cook_phone_number` regexp '^[0-9]+$'),
  CONSTRAINT age CHECK (18 <= age_in_years <= 80)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

ALTER TABLE cook
	ADD COLUMN priority INT(11) NOT NULL;

UPDATE cook
	SET priority = CASE
	    WHEN professional_level = 'C cook' THEN 1
	    WHEN professional_level = 'B cook' THEN 2
	    WHEN professional_level = 'A cook' THEN 3
	    WHEN professional_level = 'chef assistant' THEN 4
	    WHEN professional_level = 'chef' THEN 5
	END;
	
DELIMITER //

CREATE TRIGGER set_priority_before_insert
BEFORE INSERT ON cook
FOR EACH ROW
BEGIN
    SET NEW.priority = CASE
        WHEN NEW.professional_level = 'C cook' THEN 1
        WHEN NEW.professional_level = 'B cook' THEN 2
        WHEN NEW.professional_level = 'A cook' THEN 3
        WHEN NEW.professional_level = 'chef assistant' THEN 4
        WHEN NEW.professional_level = 'chef' THEN 5
    END;
END;
//

DELIMITER ;
	
DELIMITER //

CREATE TRIGGER set_priority_before_update
BEFORE UPDATE ON cook
FOR EACH ROW
BEGIN
    SET NEW.priority = CASE
        WHEN NEW.professional_level = 'C cook' THEN 1
        WHEN NEW.professional_level = 'B cook' THEN 2
        WHEN NEW.professional_level = 'A cook' THEN 3
        WHEN NEW.professional_level = 'chef assistant' THEN 4
        WHEN NEW.professional_level = 'chef' THEN 5
    END;
END;
//	

DELIMITER ;

CREATE TABLE `episodes` (
  `episode_id` int(11) NOT NULL AUTO_INCREMENT,
  `season` int(11) NOT NULL,
  `number_of_episode` int(11) NOT NULL,
  PRIMARY KEY (`episode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `episode_winner` (
  `episode_id` int(11) NOT NULL AUTO_INCREMENT,
  `winner` INT(11) NOT NULL,
  PRIMARY KEY (`episode_id`),
  KEY `episode_fk2` (`episode_id`),
  KEY `cook_fk5` (`winner`),
  CONSTRAINT `cook_fk5` FOREIGN KEY (`winner`) REFERENCES `cook` (`cook_id`) ON UPDATE CASCADE,
  CONSTRAINT `episode_fk6` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`episode_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `equipment` (
  `equipment_name` varchar(50) NOT NULL,
  `instructions` varchar(100) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  KEY `counter2` (`counter`),
  PRIMARY KEY (`equipment_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELIMITER //
CREATE PROCEDURE `fill_grades`(IN ep_id INT)
BEGIN
    DECLARE j INT DEFAULT 0;
    DECLARE judge1 INT;
    DECLARE judge2 INT;
    DECLARE judge3 INT;
    DECLARE cont_id INT;
    DECLARE season_num INT;
    DECLARE num_of_episode INT;
    DECLARE cook_win INT;
    
    
    SELECT judge_id INTO judge1 FROM judge WHERE episode_id = ep_id LIMIT 1;
    SELECT judge_id INTO judge2 FROM judge WHERE episode_id = ep_id LIMIT 1 OFFSET 1;
    SELECT judge_id INTO judge3 FROM judge WHERE episode_id = ep_id LIMIT 1 OFFSET 2;


    WHILE j < 10 DO
        
        SELECT contestant_id INTO cont_id FROM contestant WHERE episode_id = ep_id LIMIT 1 OFFSET j;

        INSERT INTO grades (grade, contestant_id, judge_id, episode_id)
        VALUES (FLOOR(1 + RAND() * 5), cont_id, judge1, ep_id),
               (FLOOR(1 + RAND() * 5), cont_id, judge2, ep_id),
               (FLOOR(1 + RAND() * 5), cont_id, judge3, ep_id);
            
        SET j = j + 1;
        END WHILE;
        
	    SET season_num = (ep_id - 1) DIV 10 + 1;
	    SET num_of_episode = (ep_id - 1) MOD 10 + 1;
	

	   SELECT frst INTO cook_win FROM (SELECT co.cook_id AS frst, SUM(g.grade) AS total_score, co.priority
		FROM grades g
		JOIN contestant c ON g.contestant_id = c.contestant_id
		JOIN cook co ON c.cook_id = co.cook_id
		WHERE g.episode_id = ep_id
		GROUP BY co.cook_id #, co.professional_training
		ORDER BY total_score DESC, co.priority DESC, RAND()
		LIMIT 1) AS winner_subquery;
		    
	    INSERT INTO episode_winner (winner)
	    VALUES (cook_win); 
END//
DELIMITER ;

CREATE TABLE `food_groups` (
  `group_name` enum('Vegetables','Fruits','Cereal and Potatoes','Milk and Dairy Products','Legumes','Red Meat','White Meat','Eggs','Fish and Seafood','Added fats and oils, olives and nuts','Sweets and Desserts') NOT NULL,
  `group_description` varchar(200) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`group_name`),
  KEY `counter3` (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELIMITER //
CREATE PROCEDURE `generate_episode`(IN ep_id INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE cuisine VARCHAR(30);
    DECLARE recipe VARCHAR(50);
    DECLARE cont_id INT;
    DECLARE jdg_id INT;
	 DECLARE season_num INT;
    DECLARE num_of_episode INT;
    
    SET season_num = (ep_id - 1) DIV 10 + 1;
	 SET num_of_episode = (ep_id - 1) MOD 10 + 1;

	INSERT INTO episodes (season, number_of_episode)
	    VALUES (season_num, num_of_episode); 
    WHILE i < 10 DO
        
        SELECT cuisine_name INTO cuisine
        FROM national_cuisine
        WHERE cuisine_name NOT IN (SELECT cuisine_name FROM episode_cuisine WHERE episode_id = ep_id)
        AND (
            (ep_id - 1) MOD 10 + 1 < 4 
            OR (
                cuisine_name NOT IN (SELECT cuisine_name FROM episode_cuisine WHERE episode_id = ep_id - 1)
                OR cuisine_name NOT IN (SELECT cuisine_name FROM episode_cuisine WHERE episode_id = ep_id - 2)
                OR cuisine_name NOT IN (SELECT cuisine_name FROM episode_cuisine WHERE episode_id = ep_id - 3)
            )
        )
        ORDER BY RAND()
        LIMIT 1;


        IF cuisine IS NOT NULL THEN
            INSERT INTO episode_cuisine (episode_id, cuisine_name)
            VALUES (ep_id, cuisine);

            
            SELECT recipe_name INTO recipe
            FROM cuisine_recipe
            WHERE cuisine_name = cuisine
            ORDER BY RAND()
            LIMIT 1;
				
				
            IF recipe IS NOT NULL THEN
                
                SELECT cook.cook_id INTO cont_id
                FROM cook_cuisine
                JOIN cook ON cook_cuisine.cook_id = cook.cook_id
                WHERE cuisine_name = cuisine
                AND cook.active_status = 1
                AND cook.cook_id NOT IN (SELECT contestant.cook_id FROM contestant WHERE episode_id = ep_id)
                AND (
                    (ep_id - 1) MOD 10 + 1 < 4 
                    OR (
                        cook.cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id - 1)
                        OR cook.cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id - 2)
                        OR cook.cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id - 3)
                    )
                )
                ORDER BY RAND()
                LIMIT 1;

                IF cont_id IS NOT NULL THEN

                    INSERT INTO contestant (episode_id, cook_id, recipe_name, national_cuisine)
                    VALUES (ep_id, cont_id, recipe, cuisine);
                END IF;
            END IF;
        END IF;



        SET i = i + 1;
    END WHILE;

    
    SET i = 0;
    WHILE i < 3 DO
        SELECT cook_id INTO jdg_id
        FROM cook
        WHERE cook_id NOT IN (SELECT cook_id FROM judge WHERE episode_id = ep_id)
        AND active_status = 1
        AND cook_id < 15 #for query 3.5 to avoid empty set result
        AND cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id)
        AND (
            (ep_id - 1) MOD 10 + 1 < 4 
            OR (
                cook_id NOT IN (SELECT cook_id FROM judge WHERE episode_id = ep_id - 1)
                OR cook_id NOT IN (SELECT cook_id FROM judge WHERE episode_id = ep_id - 2)
                OR cook_id NOT IN (SELECT cook_id FROM judge WHERE episode_id = ep_id - 3)
            )
        )
        ORDER BY RAND()
        LIMIT 1;

        IF jdg_id IS NOT NULL THEN

            INSERT INTO judge (episode_id, cook_id)
            VALUES (ep_id, jdg_id);

            
        END IF;


        SET i = i + 1;
    END WHILE;

    CALL fill_grades(ep_id);

END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE `generate_episodes`()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 50 DO
        CALL generate_episode(i);
        SET i = i + 1;
    END WHILE;
END//
DELIMITER ;

DELIMITER //

CREATE PROCEDURE `more_episodes`(IN num_episodes INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE max_episode_id INT;
    
    SELECT IFNULL(MAX(episode_id), 0) INTO max_episode_id FROM episodes;

    WHILE i <= num_episodes DO
        CALL generate_episode(max_episode_id + i);
        SET i = i + 1;
    END WHILE;
END//

DELIMITER ;

CREATE TABLE `ingredients` (
  `ingredient_name` varchar(50) NOT NULL,
  `calories_per_gram` int(11) DEFAULT NULL,
  `group_name` enum('Vegetables','Fruits','Cereal and Potatoes','Milk and Dairy Products','Legumes','Red Meat','White Meat','Eggs','Fish and Seafood','Added fats and oils, olives and nuts','Sweets and Desserts') DEFAULT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ingredient_name`),
  KEY `counter4` (`counter`),
  KEY `food_groups_fk_3` (`group_name`),
  CONSTRAINT `food_groups_fk_3` FOREIGN KEY (`group_name`) REFERENCES `food_groups` (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `judge` (
  `judge_id` int(11) NOT NULL AUTO_INCREMENT,
  `episode_id` int(11) NOT NULL,
  `cook_id` int(11) NOT NULL,
  PRIMARY KEY (`judge_id`),
  KEY `episode_fk1` (`episode_id`),
  KEY `cook_fk3` (`cook_id`),
  CONSTRAINT `cook_fk3` FOREIGN KEY (`cook_id`) REFERENCES `cook` (`cook_id`) ON UPDATE CASCADE,
  CONSTRAINT `episode_fk1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`episode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `national_cuisine` (
  `cuisine_name` varchar(30) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  KEY `counter6` (`counter`),
  PRIMARY KEY (`cuisine_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `recipes` (
  `recipe_name` varchar(50) NOT NULL,
  `short_desc` varchar(200) NOT NULL,
  `difficulty_level` enum('1','2','3','4','5') NOT NULL,
  `tip1` varchar(200) DEFAULT NULL,
  `tip2` varchar(200) DEFAULT NULL,
  `tip3` varchar(200) DEFAULT NULL,
  `prep_time` time NOT NULL,
  `cooking_time` time NOT NULL,
  `quantities` int(11) NOT NULL,
  `main_ingredient` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  KEY `counter7` (`counter`),
  PRIMARY KEY (`recipe_name`),
  KEY `ingredients_fk_2` (`main_ingredient`),
  CONSTRAINT `ingredients_fk_2` FOREIGN KEY (`main_ingredient`) REFERENCES `ingredients` (`ingredient_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `recipes_equipment` (
  `recipe_name` varchar(50) NOT NULL,
  `equipment_name` varchar(50) NOT NULL,
  PRIMARY KEY (`recipe_name`,`equipment_name`),
  KEY `equipment_fk` (`equipment_name`),
  CONSTRAINT `equipment_fk` FOREIGN KEY (`equipment_name`) REFERENCES `equipment` (`equipment_name`) ON UPDATE CASCADE,
  CONSTRAINT `recipes_fk_1` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `recipes_ingredients` (
  `recipe_name` varchar(50) NOT NULL,
  `ingredient_name` varchar(50) NOT NULL,
  `quantity_gr` int(11) DEFAULT NULL,
  `quantity_approx` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`recipe_name`,`ingredient_name`),
  KEY `ingredients_fk_1` (`ingredient_name`),
  CONSTRAINT `ingredients_fk_1` FOREIGN KEY (`ingredient_name`) REFERENCES `ingredients` (`ingredient_name`) ON UPDATE CASCADE,
  CONSTRAINT `recipes_fk_3` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE,
  CONSTRAINT `check_either_not_null` CHECK (`quantity_gr` is not null and `quantity_approx` is null or `quantity_gr` is null and `quantity_approx` is not null)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `steps` (
  `step_id` int(11) NOT NULL AUTO_INCREMENT,
  `step_description` varchar(50) NOT NULL,
  `step_number` int(11) NOT NULL,
  `recipe_name` varchar(50) NOT NULL,
  PRIMARY KEY (`step_id`),
  KEY `recipes_fk_2` (`recipe_name`),
  CONSTRAINT `recipes_fk_2` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `tags` (
  `tag_name` varchar(30) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  KEY `counter8` (`counter`),
  PRIMARY KEY (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `tag_recipe` (
  `recipe_name` varchar(50) NOT NULL,
  `tag_name` varchar(30) NOT NULL,
  KEY `recipe_name` (`recipe_name`),
  KEY `tag_name` (`tag_name`),
  CONSTRAINT `tag_recipe_ibfk_1` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE,
  CONSTRAINT `tag_recipe_ibfk_2` FOREIGN KEY (`tag_name`) REFERENCES `tags` (`tag_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `themes` (
  `theme_name` varchar(30) NOT NULL,
  `theme_desc` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  KEY `counter1` (`counter`),
  PRIMARY KEY (`theme_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `themes_recipes` (
  `recipe_name` varchar(50) NOT NULL,
  `theme_name` varchar(30) NOT NULL,
  PRIMARY KEY (`recipe_name`,`theme_name`),
  KEY `themes_fk_6` (`theme_name`),
  CONSTRAINT `recipes_fk_7` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE,
  CONSTRAINT `themes_fk_6` FOREIGN KEY (`theme_name`) REFERENCES `themes` (`theme_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELIMITER //
CREATE TRIGGER calculate_calories AFTER INSERT ON recipes_ingredients
FOR EACH ROW
BEGIN
    
    DECLARE total_calories INT;

    
    IF NEW.quantity_gr IS NOT NULL THEN
        
        SELECT SUM(ingredients.calories_per_gram * recipes_ingredients.quantity_gr) 
        INTO total_calories
        FROM ingredients
        INNER JOIN recipes_ingredients ON ingredients.ingredient_name = recipes_ingredients.ingredient_name
        WHERE recipes_ingredients.recipe_name = NEW.recipe_name;

        
        UPDATE nutrition_information
        SET calories = total_calories
        WHERE recipe_name = NEW.recipe_name;
    END IF;
END//
DELIMITER ;

CREATE TABLE `contestant` (
  `contestant_id` int(11) NOT NULL AUTO_INCREMENT,
  `episode_id` int(11) NOT NULL,
  `cook_id` int(11) NOT NULL,
  `recipe_name` varchar(50) NOT NULL,
  `national_cuisine` varchar(30) NOT NULL,
  PRIMARY KEY (`contestant_id`),
  KEY `episode_fk2` (`episode_id`),
  KEY `cook_fk4` (`cook_id`),
  KEY `recipe_fk5` (`recipe_name`),
  KEY `national_cuisine_fk1` (`national_cuisine`),
  CONSTRAINT `cook_fk4` FOREIGN KEY (`cook_id`) REFERENCES `cook` (`cook_id`) ON UPDATE CASCADE,
  CONSTRAINT `episode_fk2` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`episode_id`) ON UPDATE CASCADE,
  CONSTRAINT `national_cuisine_fk1` FOREIGN KEY (`national_cuisine`) REFERENCES `national_cuisine` (`cuisine_name`) ON UPDATE CASCADE,
  CONSTRAINT `recipe_fk5` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `cook_cuisine` (
  `cook_id` int(11) NOT NULL,
  `cuisine_name` varchar(30) NOT NULL,
  PRIMARY KEY (`cook_id`,`cuisine_name`),
  KEY `cook_cuisine_cuisine` (`cuisine_name`),
  CONSTRAINT `cook_cuisine_cook` FOREIGN KEY (`cook_id`) REFERENCES `cook` (`cook_id`) ON UPDATE CASCADE,
  CONSTRAINT `cook_cuisine_cuisine` FOREIGN KEY (`cuisine_name`) REFERENCES `national_cuisine` (`cuisine_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE admin (
    user_id VARCHAR(100) NOT NULL PRIMARY KEY,
    password VARCHAR(100)
);

CREATE TABLE cook_user (
    user_id VARCHAR(100) NOT NULL PRIMARY KEY,
    password VARCHAR(100),
    cook_id INT NOT NULL,
    CONSTRAINT cook_user_cook FOREIGN KEY (cook_id) REFERENCES cook (cook_id) ON UPDATE CASCADE
);

CREATE TABLE `cuisine_recipe` (
  `recipe_name` varchar(50) NOT NULL,
  `cuisine_name` varchar(30) NOT NULL,
  PRIMARY KEY (`recipe_name`,`cuisine_name`),
  KEY `cuisine_recipes_cuisine` (`cuisine_name`),
  CONSTRAINT `cuisine_recipes_cuisine` FOREIGN KEY (`cuisine_name`) REFERENCES `national_cuisine` (`cuisine_name`) ON UPDATE CASCADE,
  CONSTRAINT `cuisine_recipes_recipes` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `episode_cuisine` (
  `episode_id` int(11) NOT NULL,
  `cuisine_name` varchar(30) NOT NULL,
  PRIMARY KEY (`episode_id`,`cuisine_name`),
  KEY `episode_cuisine_cuisine` (`cuisine_name`),
  CONSTRAINT `episode_cuisine_cuisine` FOREIGN KEY (`cuisine_name`) REFERENCES `national_cuisine` (`cuisine_name`) ON UPDATE CASCADE,
  CONSTRAINT `episode_cuisine_episode` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`episode_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` enum('1','2','3','4','5') NOT NULL,
  `contestant_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `episode_fk3` (`episode_id`),
  KEY `judge_fk` (`judge_id`),
  KEY `contestant_fk` (`contestant_id`),
  CONSTRAINT `contestant_fk` FOREIGN KEY (`contestant_id`) REFERENCES `contestant` (`contestant_id`),
  CONSTRAINT `episode_fk3` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`episode_id`),
  CONSTRAINT `judge_fk` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `meal_recipe` (
  `recipe_name` varchar(50) NOT NULL,
  `meal_name` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  KEY `counter5` (`counter`),
  PRIMARY KEY (`recipe_name`,`meal_name`),
  CONSTRAINT `meal_recipe_ibfk_1` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `nutrition_information` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_name` varchar(50) NOT NULL,
  `gram_fat` int(11) DEFAULT NULL,
  `gram_prot` int(11) DEFAULT NULL,
  `gram_carbo` int(11) DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  PRIMARY KEY (`info_id`),
  KEY `recipe_name` (`recipe_name`),
  CONSTRAINT `nutrition_information_ibfk_1` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=LATIN1_SWEDISH_CI;

CREATE INDEX idx_cook_age_in_years ON cook (age_in_years);

CREATE INDEX idx_episodes_season ON episodes (season);
