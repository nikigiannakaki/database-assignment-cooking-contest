DELIMITER //
CREATE PROCEDURE grantcookassign(IN cook_id INT, IN recipe_name VARCHAR(50))
BEGIN
    DECLARE user_id VARCHAR(100);
    DECLARE view_name VARCHAR(100);
    
    SELECT cu.user_id INTO user_id 
    FROM cook_user cu 
    WHERE cu.cook_id = cook_id;
    
    SET view_name = CONCAT('cook', cook_id, '_', recipe_name, '_view');
    
    SET @create_view_sql = CONCAT('CREATE OR REPLACE VIEW ', view_name, ' AS ',
                                  'SELECT * FROM recipes WHERE recipe_name = \'', recipe_name, '\'');
    
    PREPARE stmt FROM @create_view_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET @grant_sql = CONCAT('GRANT UPDATE ON ', view_name, ' TO \'', user_id, '\'@\'localhost\'');

    PREPARE stmt FROM @grant_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;

CREATE TRIGGER grant_cook_assign 
BEFORE INSERT ON contestant
FOR EACH ROW
BEGIN
    DECLARE recipe_exists INT;

    SELECT COUNT(*)
    INTO recipe_exists
    FROM contestant
    WHERE cook_id = NEW.cook_id AND recipe_name = NEW.recipe_name;


    IF recipe_exists = 0 THEN
        CALL grantcookassign(NEW.cook_id,NEW.recipe_name); 
    END IF;
END;


CREATE PROCEDURE grantcookprivileges(IN user_id VARCHAR(100))
BEGIN
    DECLARE view_name VARCHAR(100);
    DECLARE cook_id INT;                      
    
    SET @grant_sql = CONCAT('GRANT INSERT ON recipes TO \'', user_id, '\'@\'localhost\'');
    PREPARE stmt FROM @grant_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SELECT cu.cook_id INTO cook_id
    FROM cook_user cu
    WHERE cu.user_id = user_id; 
    
    SET view_name = CONCAT('cook', cook_id, '_view');
    
    SET @create_view_sql = CONCAT('CREATE OR REPLACE VIEW ', view_name, ' AS ',
                                  'SELECT * FROM cook WHERE cook_id = ', cook_id);
    
    PREPARE stmt FROM @create_view_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET @grant_sql = CONCAT('GRANT UPDATE ON ', view_name, ' TO \'', user_id, '\'@\'localhost\'');
    
    PREPARE stmt FROM @grant_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END;

CREATE TRIGGER grant_cook_recipes AFTER INSERT ON cook_user
FOR EACH ROW
BEGIN
   CALL grantcookprevileges(NEW.user_id);
END;

CREATE PROCEDURE grant_admin(IN user_id VARCHAR(100))
BEGIN
    SET @grant_sql = CONCAT('GRANT SELECT, LOCK TABLES, SHOW VIEW, RELOAD, CREATE, INSERT, UPDATE, DELETE, ALTER, DROP, CREATE VIEW, CREATE TABLESPACE ON cooking.* TO \'', user_id, '\'@\'localhost\'');
    PREPARE stmt FROM @grant_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END;

CREATE TRIGGER new_administrator AFTER INSERT ON admin
FOR EACH ROW
BEGIN
    CALL grant_admin(NEW.user_id);
END;
//