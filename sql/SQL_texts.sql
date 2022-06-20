-- -----------------------------------------------------
USE `sql_db` ;

-- Alter tables to add PK
-- -----------------------------------------------------
ALTER TABLE `actor`
MODIFY COLUMN `actor_id` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE `inventory`
MODIFY COLUMN `inventory_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE `category`
MODIFY COLUMN `category_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE `film`
MODIFY COLUMN `film_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE `language`
MODIFY COLUMN `language_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE `rental`
MODIFY COLUMN `rental_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY AUTO_INCREMENT;

-- ---------------------------------------------------
-- Alter tables to add FK
-- FILM --
-- -----------------------------------------------------
ALTER TABLE `sql_db`.`film`
ADD COLUMN `language_language_id` BIGINT;

ALTER TABLE `sql_db`.`film` 
ADD CONSTRAINT `fk_film_language1`
    FOREIGN KEY (`language_language_id`)
    REFERENCES `sql_db`.`language` (`language_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
    
CREATE INDEX `fk_film_language1_idx` ON `sql_db`.`film` (`language_language_id` ASC) VISIBLE;

-- inventory --

ALTER TABLE `sql_db`.`inventory` 
ADD COLUMN `film_film_id` INT NOT NULL,
ADD COLUMN`rental_rental_id` INT NOT NULL;

ALTER TABLE  `sql_db`.`inventory` 
ADD  CONSTRAINT `fk_inventory_film1`
    FOREIGN KEY (`film_film_id`)
    REFERENCES `sql_db`.`film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_inventory_rental1`
    FOREIGN KEY (`rental_rental_id`)
    REFERENCES `sql_db`.`rental` (`rental_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

CREATE INDEX `fk_inventory_film1_idx` ON `sql_db`.`inventory` (`film_film_id` ASC) VISIBLE;
CREATE INDEX `fk_inventory_rental1_idx` ON `sql_db`.`inventory` (`rental_rental_id` ASC) VISIBLE;

ALTER TABLE  `sql_db`.`inventory` ADD  CONSTRAINT `fk_inventory_film1`
    FOREIGN KEY (`film_film_id`)
    REFERENCES `sql_db`.`film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


ALTER TABLE  ADD FOREIGN KEY (`inventory_id`, `film_film_id`, `rental_rental_id`);









