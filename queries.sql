
Η συνομιλία άνοιξε. 7 μηνύματα. Όλα τα μηνύματα είναι αναγνωσμένα.

Μετάβαση απευθείας στο περιεχόμενο
Χρήση του Gmail με αναγνώστες οθόνης
24 από 5.360
db inserts pg 1
Εισερχόμενα

petrq vita <minuspetran@gmail.com>
Συνημμένα
Παρ 17 Μαΐ, 11:00 μ.μ. (πριν από 8 ημέρες)
προς p28.georgantas, εγώ


 Ένα συνημμένο
  •  Σαρώθηκε από το Gmail

petrq vita


Στις Παρ 17 Μαΐ 2024 στις 11:00 μ.μ., ο/η petrq vita <minuspetran@gmail.com> έγραψε:


petrq vita
ΣυνημμέναΣάβ 18 Μαΐ, 5:34 μ.μ. (πριν από 7 ημέρες)
Στις Παρ 17 Μαΐ 2024 στις 11:00 μ.μ., ο/η petrq vita <minuspetran@gmail.com> έγραψε:
2

petrq vita
ΣυνημμέναΤετ 22 Μαΐ, 5:06 μ.μ. (πριν από 3 ημέρες)
Στις Δευ 20 Μαΐ 2024 στις 9:44 μ.μ., ο/η Νίκη Γιαννακάκη <nicky.giannakaki@gmail.com> έγραψε: Στις Δευ 20 Μαΐ 2024 στις 2:04 μ.μ., ο/η petrq vita <minuspetran@g

petrq vita
Συνημμένα
Τετ 22 Μαΐ, 10:32 μ.μ. (πριν από 3 ημέρες)
προς εγώ, p28.georgantas


 Ένα συνημμένο
  •  Σαρώθηκε από το Gmail
Thank you!Pic?Thanks and same to you!
1)


SELECT c.cook_id, CONCAT(c.first_name, ' ', c.last_name) AS cook_name, avg(g.grade) as avgcook_grade
FROM cook c 
JOIN contestant co ON c.cook_id = co.cook_id
JOIN grades g ON co.contestant_id = g.contestant_id
GROUP BY c.cook_id, cook_name;

SELECT n.cuisine_name, avg(g.grade) as avgcuisine_grade
FROM national_cuisine n
JOIN contestant c ON n.cuisine_name = c.national_cuisine
JOIN grades g ON c.contestant_id = g.contestant_id
GROUP BY n.cuisine_name;


2)

SELECT c.cook_id, CONCAT(c.first_name, ' ', c.last_name) AS cook_name
FROM cook c
WHERE c.cook_id IN (SELECT cc.cook_id
                    FROM cook_cuisine cc
                    WHERE cc.cuisine_name = 'Japanese');

SELECT DISTINCT *
FROM (SELECT c.cook_id, CONCAT(c.first_name, ' ', c.last_name) AS cook_name
      FROM cook c
      WHERE c.cook_id IN (SELECT cc.cook_id
                          FROM cook_cuisine cc
                          WHERE cc.cuisine_name = 'Japanese')) cu
WHERE cu.cook_id IN (SELECT con.cook_id
                       FROM contestant con
                       WHERE con.episode_id IN (SELECT e.episode_id
                                                FROM episodes e
                                                WHERE e.season = 5));



3)


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


4)

SELECT c.cook_id, c.first_name, c.last_name
FROM cook c
WHERE c.cook_id NOT IN (SELECT j.cook_id
                        FROM judge j);


5)


SELECT DISTINCT 
    o.cook_id AS cook_id1, 
    CONCAT(c1.first_name, ' ', c1.last_name) AS cook_name1,
    t.cook_id AS cook_id2, 
    CONCAT(c2.first_name, ' ', c2.last_name) AS cook_name2,
    o.appearances
FROM (SELECT e.season, j.cook_id, COUNT(*) AS appearances
      FROM judge j 
      INNER JOIN episodes e ON j.episode_id = e.episode_id
      GROUP BY e.season, j.cook_id
      HAVING COUNT(*) > 3) o 
INNER JOIN (SELECT e.season, j.cook_id, COUNT(*) AS appearances
            FROM judge j 
            INNER JOIN episodes e ON j.episode_id = e.episode_id
            GROUP BY e.season, j.cook_id
            HAVING COUNT(*) > 3) t 
ON o.appearances = t.appearances
AND o.cook_id < t.cook_id
INNER JOIN cook c1 ON o.cook_id = c1.cook_id
INNER JOIN cook c2 ON t.cook_id = c2.cook_id
ORDER BY o.appearances, cook_id1, cook_id2;




6)


SELECT tr1.tag_name AS tag1, tr2.tag_name AS tag2, COUNT(*) AS tot
FROM contestant con 
INNER JOIN tag_recipe tr1 
    ON con.recipe_name = tr1.recipe_name
INNER JOIN tag_recipe tr2 
    ON con.recipe_name = tr2.recipe_name 
    AND tr1.tag_name < tr2.tag_name
INNER JOIN episodes e 
    ON con.episode_id = e.episode_id
GROUP BY tr1.tag_name, tr2.tag_name
ORDER BY tot DESC
LIMIT 3;

7) 

CREATE VIEW cook_participation AS
WITH max_part(value) AS (
    SELECT MAX(ap.tot) AS value
    FROM (
        SELECT (c.cnt + j.cnt) AS tot
        FROM (
            SELECT cook_id, COUNT(*) AS cnt
            FROM contestant
            GROUP BY cook_id
        ) c
        INNER JOIN (
            SELECT cook_id, COUNT(*) AS cnt
            FROM judge
            GROUP BY cook_id
        ) j ON c.cook_id = j.cook_id
         ) ap
    )
SELECT con.cook_id
    FROM (
        SELECT cook_id, COUNT(*) AS cnt
        FROM contestant
        GROUP BY cook_id
    ) con
    INNER JOIN (
        SELECT cook_id, COUNT(*) AS cnt
        FROM judge
        GROUP BY cook_id
    ) jud ON con.cook_id = jud.cook_id
    WHERE (con.cnt + jud.cnt) < (SELECT value FROM max_part) - 4;

SELECT c.cook_id, CONCAT(c.first_name, ' ', c.last_name) AS cook_name
FROM cook c
JOIN cook_participation cp ON c.cook_id = cp.cook_id;
	

8)


SELECT ep.episode_id, SUM(re.equip) AS sumequip
FROM (SELECT recipe_name, COUNT(*) AS equip
      FROM recipes_equipment
      GROUP BY recipe_name) re
INNER JOIN contestant con ON con.recipe_name = re.recipe_name
INNER JOIN episodes ep ON ep.episode_id = con.episode_id
GROUP BY ep.episode_id
ORDER BY sumequip DESC
LIMIT 1;

9)


SELECT e.season, AVG(ci.carbo) AS avg_carbo
FROM (
    SELECT 
        r.recipe_name, 
        (ni.gram_carbo * r.quantities) AS carbo
    FROM 
        nutrition_information ni 
    INNER JOIN 
        recipes r ON ni.recipe_name = r.recipe_name
) ci
INNER JOIN 
    contestant er ON ci.recipe_name = er.recipe_name
INNER JOIN 
    episodes e ON e.episode_id = er.episode_id
GROUP BY 
    e.season;

10)


WITH participations_per_season AS (
    SELECT
        c.national_cuisine,
        e.season AS season,
        COUNT(*) AS participation_count
    FROM
        contestant c
        JOIN episodes e ON c.episode_id = e.episode_id
    GROUP BY
        c.national_cuisine, e.season
    HAVING
        COUNT(*) >= 3
),
consecutive_years AS (
    SELECT
        p1.national_cuisine,
        p1.season AS season1,
        p2.season AS season2,
        p1.participation_count AS count1,
        p2.participation_count AS count2
    FROM
        participations_per_season p1
        JOIN participations_per_season p2 ON p1.national_cuisine = p2.national_cuisine
        AND p1.season = p2.season - 1
),
valid_cuisines AS (
    SELECT
        national_cuisine
    FROM
        consecutive_years
    WHERE
        count1 = count2
    GROUP BY
        national_cuisine
    HAVING
        COUNT(*) = 1
)
SELECT
    c.national_cuisine,
    c.season1,
    c.season2,
    c.count1 AS participation_count
FROM
    consecutive_years c
JOIN
    valid_cuisines v ON c.national_cuisine = v.national_cuisine
WHERE
    c.count1 = c.count2
ORDER BY 
	season1, participation_count;
	
	
11)

SELECT 
    jc.cook_id AS judge_cook_id,
    CONCAT(jc.first_name, ' ', jc.last_name) AS judge_name,
    c.cook_id AS contestant_cook_id,
    CONCAT(c.first_name, ' ', c.last_name) AS contestant_name,
    SUM(CAST(gr.grade AS INT)) AS total_grade
FROM 
    grades gr
INNER JOIN 
    judge j ON gr.judge_id = j.judge_id
INNER JOIN 
    contestant ct ON gr.contestant_id = ct.contestant_id
INNER JOIN 
    cook c ON ct.cook_id = c.cook_id
INNER JOIN 
    cook jc ON j.cook_id = jc.cook_id
GROUP BY 
    jc.cook_id, ct.cook_id
ORDER BY 
    total_grade DESC
LIMIT 5;




12)


SELECT 
    season,
    number_of_episode,
    total_difficulty
FROM (
    SELECT 
        e.season,
        e.number_of_episode,
        SUM(CAST(r.difficulty_level AS INT)) AS total_difficulty,
        ROW_NUMBER() OVER (PARTITION BY e.season ORDER BY SUM(CAST(r.difficulty_level AS INT)) DESC) AS rank
    FROM 
        episodes e
    INNER JOIN 
        contestant c ON e.episode_id = c.episode_id
    INNER JOIN 
        recipes r ON c.recipe_name = r.recipe_name
    GROUP BY 
        e.season, e.number_of_episode
) AS ranked_episodes
WHERE 
    rank = 1
ORDER BY 
    season;
	
13) #douleyei gia grades me cook_id
SELECT gr.episode_id, ROUND(SUM(c.priority) / 3 + SUM(jc.priority) / 10)  AS professional_grade
FROM grades gr
JOIN cook c ON gr.contestant_id = c.cook_id
JOIN cook jc ON gr.judge_id = jc.cook_id
GROUP BY episode_id
ORDER BY professional_grade, RAND()
LIMIT 1;

14) 


SELECT 
    theme_name,
    COUNT(*) AS participation_count
FROM 
    themes_recipes
GROUP BY 
    theme_name
ORDER BY 
    participation_count DESC
LIMIT 1;

15)


SELECT 
    fg.group_name
FROM 
    food_groups fg
LEFT JOIN 
    ingredients i ON fg.group_name = i.group_name
LEFT JOIN 
    recipes_ingredients ri ON i.ingredient_name = ri.ingredient_name
INNER JOIN 
    contestant c ON ri.recipe_name = c.recipe_name
GROUP BY 
    fg.group_name
HAVING 
    COUNT(DISTINCT ri.recipe_name) = 0;


queries.txt
Εμφάνιση queries.txt.