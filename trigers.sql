USE cooking;

DELIMITER //

CREATE TRIGGER calculate_calories AFTER INSERT ON recipes_ingredients
FOR EACH ROW
BEGINepisodes
    -- Declare total_calories variable
    DECLARE total_calories INT;

    -- Check if quantity_gr is not NULL
    IF NEW.quantity_gr IS NOT NULL THEN
        -- Calculate total calories for the recipe based on ingredients and quantities
        SELECT SUM(ingredients.calories_per_gram * recipes_ingredients.quantity_gr) 
        INTO total_calories
        FROM ingredients
        INNER JOIN recipes_ingredients ON ingredients.ingredient_name = recipes_ingredients.ingredient_name
        WHERE recipes_ingredients.recipe_name = NEW.recipe_name;

        -- Update the calculated calories into the nutrition_information table
        UPDATE nutrition_information
        SET calories = total_calories
        WHERE recipe_name = NEW.recipe_name;
    END IF;
END;
//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE fill_grades(IN ep_id INT)
BEGIN
    DECLARE j INT DEFAULT 0;
    DECLARE judge1 INT;
    DECLARE judge2 INT;
    DECLARE judge3 INT;
    DECLARE cont_id INT;
    
    -- Select the judges for the specific episode
    SELECT judge_id INTO judge1 FROM judge WHERE episode_id = ep_id LIMIT 1;
    SELECT judge_id INTO judge2 FROM judge WHERE episode_id = ep_id LIMIT 1 OFFSET 1;
    SELECT judge_id INTO judge3 FROM judge WHERE episode_id = ep_id LIMIT 1 OFFSET 2;


    WHILE j < 10 DO
        -- Select contestant ID
        SELECT contestant_id INTO cont_id FROM contestant WHERE episode_id = ep_id LIMIT 1 OFFSET j;

        -- Insert grades for each contestant and judge

        INSERT INTO grades (grade, contestant_id, judge_id, episode_id)
        VALUES (FLOOR(1 + RAND() * 5), cont_id, judge1, ep_id),
               (FLOOR(1 + RAND() * 5), cont_id, judge2, ep_id),
               (FLOOR(1 + RAND() * 5), cont_id, judge3, ep_id);


            
        SET j = j + 1;
        END WHILE;
        
END;
//

DELIMITER ;


DELIMITER //

CREATE PROCEDURE generate_episode(IN ep_id INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE cuisine VARCHAR(30);
    DECLARE recipe VARCHAR(50);
    DECLARE cont_id INT;
    DECLARE jdg_id INT;
    DECLARE season_num INT;
    DECLARE num_of_episode INT;
    DECLARE gr ENUM ('1','2','3','4','5');

    SET season_num = (ep_id - 1) DIV 10 + 1;
    SET num_of_episode = (ep_id - 1) MOD 10 + 1;

    -- Insert into episodes table
    INSERT INTO episodes (episode_id, season, number_of_episode)
    VALUES (ep_id, season_num, num_of_episode);

    WHILE i < 10 DO
        -- Select the cuisine for the current iteration
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

            -- Select 1 random recipe from each cuisine
            SELECT recipe_name INTO recipe
            FROM cuisine_recipe
            WHERE cuisine_name = cuisine
            ORDER BY RAND()
            LIMIT 1;

            IF recipe IS NOT NULL THEN
                -- Select 1 random contestant from each cuisine
                SELECT cook_id INTO cont_id
                FROM cook_cuisine
                WHERE cuisine_name = cuisine
                AND cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id)
                AND (
                    (ep_id - 1) MOD 10 + 1 < 4 
                    OR (
                        cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id - 1)
                        OR cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id - 2)
                        OR cook_id NOT IN (SELECT cook_id FROM contestant WHERE episode_id = ep_id - 3)
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

    -- Select 3 different random cooks as judges
    SET i = 0;
    WHILE i < 3 DO
        SELECT cook_id INTO jdg_id
        FROM cook
        WHERE cook_id NOT IN (SELECT cook_id FROM judge WHERE episode_id = ep_id)
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

END;
//

DELIMITER ;

-- Create the new generate_episodes procedure
DELIMITER //

CREATE PROCEDURE generate_episodes()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 50 DO
        CALL generate_episode(i);
        SET i = i + 1;
    END WHILE;
END;
//

DELIMITER ;


SELECT c.cook_id, avg(g.grade) as avgcook_grade
FROM cook c INNER JOIN grades g ON c.cook_id = g.cook_id
GROUP BY c.cook_id;

SELECT n.cuisine_name, avg(g.grade) as avgcuisine_grade
FROM national_cuisine n INNER JOIN grades g ON n.cuisine_name = g.national_cuisine
GROUP BY n.cuisine_name;


SELECT frst INTO cook_win FROM (SELECT co.cook_id AS frst, SUM(g.grade) AS total_score, co.priority
		FROM grades g
		JOIN contestant c ON g.contestant_id = c.contestant_id
		JOIN cook co ON c.cook_id = co.cook_id
		WHERE g.episode_id = ep_id
		GROUP BY co.cook_id #, co.professional_training
		ORDER BY total_score DESC, co.priority DESC, RAND()
		LIMIT 1) AS winner_subquery;

select contestant.cook_id, cook.first_name, cook.last_name, contestant.recipe_name, cook.age_in_years
    from contestant
    inner join cook on cook.cook_id = contestant.cook_id;

create view cook_recipe_age as
    select contestant.cook_id, cook.first_name, cook.last_name, contestant.recipe_name, cook.age_in_years
        from contestant
        inner join cook on cook.cook_id = contestant.cook_id;


select cook.cook_id, cook.age_in_years, cook.first_name, cook.last_name, count(cook_i)
    from contestant
     join ()


SELECT 
    c.cook_id, 
    CONCAT(c.first_name, ' ', c.last_name) AS full_name, 
    c.age_in_years,
    COUNT(DISTINCT ct.recipe_name) AS recipe_count
FROM 
    cook c
JOIN 
    contestant ct ON c.cook_id = ct.cook_id
WHERE 
    c.age_in_years < 30
GROUP BY 
    c.cook_id, full_name, c.age_in_years
ORDER BY 
    recipe_count DESC;
