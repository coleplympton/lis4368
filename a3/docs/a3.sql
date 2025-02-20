-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema csp21b
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `csp21b` ;

-- -----------------------------------------------------
-- Schema csp21b
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `csp21b` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `csp21b` ;

-- -----------------------------------------------------
-- Table `csp21b`.`petstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csp21b`.`petstore` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csp21b`.`petstore` (
  `pst_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_name` VARCHAR(30) NOT NULL,
  `pst_street` VARCHAR(30) NOT NULL,
  `pst_city` VARCHAR(30) NOT NULL,
  `pst_state` CHAR(2) NOT NULL,
  `pst_zip` INT(9) UNSIGNED NOT NULL,
  `pst_phone` BIGINT UNSIGNED NOT NULL,
  `pst_email` VARCHAR(100) NOT NULL,
  `pst_url` VARCHAR(100) NOT NULL,
  `pst_ytd_sales` DECIMAL(10,2) NOT NULL,
  `pst_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pst_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csp21b`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csp21b`.`customer` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csp21b`.`customer` (
  `cus_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_fname` VARCHAR(15) NOT NULL,
  `cus_lname` VARCHAR(30) NOT NULL,
  `cus_street` VARCHAR(30) NOT NULL,
  `cus_city` VARCHAR(30) NOT NULL,
  `cus_state` CHAR(2) NOT NULL,
  `cus_zip` INT UNSIGNED NOT NULL,
  `cus_phone` BIGINT UNSIGNED NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_balance` DECIMAL(8,2) NOT NULL,
  `cus_total_sales` DECIMAL(8,2) NOT NULL,
  `cus_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`cus_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csp21b`.`pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csp21b`.`pet` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csp21b`.`pet` (
  `pet_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_id` SMALLINT UNSIGNED NOT NULL,
  `cus_id` SMALLINT UNSIGNED NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `pet_sex` ENUM('m', 'f') NOT NULL,
  `pet_cost` DECIMAL(6,2) NOT NULL,
  `pet_price` DECIMAL(6,2) NOT NULL,
  `pet_age` TINYINT NOT NULL,
  `pet_color` VARCHAR(30) NOT NULL,
  `pet_sale_date` DATE NULL,
  `pet_vaccine` ENUM('y', 'n') NOT NULL,
  `pet_neuter` ENUM('y', 'n') NOT NULL,
  `pet_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pet_id`),
  INDEX `fk_pet_petstore_idx` (`pst_id` ASC) VISIBLE,
  INDEX `fk_pet_customer1_idx` (`cus_id` ASC) VISIBLE,
  CONSTRAINT `fk_pet_petstore`
    FOREIGN KEY (`pst_id`)
    REFERENCES `csp21b`.`petstore` (`pst_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pet_customer1`
    FOREIGN KEY (`cus_id`)
    REFERENCES `csp21b`.`customer` (`cus_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `csp21b`.`petstore`
-- -----------------------------------------------------
START TRANSACTION;
USE `csp21b`;
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Happy Pets', '123 Main St', 'Tallahassee', 'FL', 32301, 8501234567, 'info@happypets.com', 'www.happypets.com', 125000.50, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Furry Friends', '456 Elm St', 'Orlando', 'FL', 32801, 4079876543, 'contact@furryfriends.com', 'www.furryfriends.com', 98000.75, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Paws & Claws', '789 Oak St', 'Miami', 'FL', 33101, 3055551234, 'hello@pethaven.com', 'www.pawsclaws.com', 156700.00, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Pet Haven', '159 Birch St', 'Tampa', 'FL', 33601, 8132223344, 'support@pawsclaws.com', 'www.pethaven.com', 72000.30, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'The Pet Stop', '753 Pine St', 'Jacksonville', 'FL', 32201, 9043335566, 'info@thepetstop.com', 'www.thepetstop.com', 134500.20, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Purrfect Pets', '951 Maple St', 'Gainesville', 'FL', 32601, 3527890123, 'purrfect@pets.com', 'www.purrfectpets.com', 112300.90, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Fido’s Place', '852 Cedar St', 'Fort Myers', 'FL', 33901, 2394567890, 'contact@fidosplace.com', 'www.fidosplace.com', 98000.45, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Exotic Critters', '369 Palm St', 'Key West', 'FL', 33040, 3051112222, 'xotic@critters.com', 'www.exoticcritters.com', 67500.75, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'All About Pets', '147 Cypress St', 'Sarasota', 'FL', 34201, 9417896543, 'info@allaboutpets.com', 'www.allaboutpets.com', 134200.25, NULL);
INSERT INTO `csp21b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Pampered Paws', '258 Willow St', 'Pensacola', 'FL', 32501, 8506547890, 'pampered@paws.com', 'www.pamperedpaws.com', 89000.60, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `csp21b`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `csp21b`;
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'John', 'Doe', '100 Main St', 'Tallahassee', 'FL', 32301, 8501112233, 'johndoe@email.com', 0.00, 250.75, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Jane', 'Smith', '200 Elm St', 'Orlando', 'FL', 32801, 4072223344, 'janesmith@email.com', 10.50, 400.00, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Alice', 'Brown', '900 Cypress St', 'Sarasota', 'FL', 34201, 9419990001, 'henrymoore@email.com', 4.75, 195.80, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Bob', 'Johnson', '800 Palm St', 'Key West', 'FL', 33040, 3058889900, 'gracelee@email.com', 0.00, 350.00, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Charlie', 'Davis', '700 Cedar St', 'Fort Myers', 'FL', 33901, 2397778899, 'frankwhite@email.com', 0.00, 225.50, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Emily', 'Miller', '600 Maple St', 'Gainesville', 'FL', 32601, 3526667788, 'emilymiller@email.com', 3.25, 150.00, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Frank', 'White', '500 Pine St', 'Jacksonville', 'FL', 32201, 9045556677, 'charliedavis@email.com', 0.00, 275.00, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Henry', 'Lee', '400 Birch St', 'Tampa', 'FL', 33601, 8134445566, 'bobjohnson@email.com', 5.75, 320.50, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Ivy', 'Moore', '300 Oak St', 'Miami', 'FL', 33101, 3053334455, 'alicebrown@email.com', 0.00, 180.25, NULL);
INSERT INTO `csp21b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Grace', 'Lee', '1000 Willow St', 'Pensacola', 'FL', 32501, 8500001112, 'ivytaylor@email.com', 0.00, 410.90, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `csp21b`.`pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `csp21b`;
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, 5, 'Dog', 'm', 200.00, 500.00, 2, 'Brown', '2025-02-10', 'y', 'n', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, NULL, 'Cat', 'm', 100.00, 300.00, 6, 'White', '2025-02-11', 'y', 'n', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 4, 5, 'Parrot', 'f', 50.00, 150.00, 1, 'Green', '2025-02-12', 'n', 'y', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 3, 3, 'Rabbit', 'm', 30.00, 80.00, 3, 'Gray', '2025-02-13', 'y', 'y', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, NULL, 'Hamster', 'f', 10.00, 25.00, 2, 'Brown', '2025-02-14', 'n', 'n', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 2, 5, 'Dog', 'm', 150.00, 450.00, 1, 'Black', '2025-02-15', 'n', 'n', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, 4, 'Cat', 'f', 90.00, 280.00, 6, 'Orange', '2025-02-16', 'y', 'y', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 3, 1, 'Guinea Pig', 'f', 20.00, 50.00, 3, 'White', NULL, 'y', 'y', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, 2, 'Turtle', 'm', 40.00, 100.00, 4, 'Green', '2025-02-17', 'y', 'y', NULL);
INSERT INTO `csp21b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 2, NULL, 'Dog', 'f', 250.00, 600.00, 2, 'Golden', NULL, 'y', 'y', NULL);

COMMIT;

