ALTER TABLE `equipment` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `ingredients` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `food_groups` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `national_cuisine` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `cook` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `episodes` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `recipes` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `meal_recipe` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `tags` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;

ALTER TABLE `themes` 
ADD COLUMN `image` BLOB,
ADD COLUMN `image_description` TEXT;
