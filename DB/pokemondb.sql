-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PokemonDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `PokemonDB` ;

-- -----------------------------------------------------
-- Schema PokemonDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PokemonDB` DEFAULT CHARACTER SET utf8 ;
USE `PokemonDB` ;

-- -----------------------------------------------------
-- Table `pokemon`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokemon` ;

CREATE TABLE IF NOT EXISTS `pokemon` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pokedex_number` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT(500) NOT NULL,
  `height_inches` DOUBLE NOT NULL,
  `weight_pounds` DOUBLE NOT NULL,
  `image_url` VARCHAR(500) NULL,
  `type` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS pokemonuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'pokemonuser'@'localhost' IDENTIFIED BY 'pokemonuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'pokemonuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pokemon`
-- -----------------------------------------------------
START TRANSACTION;
USE `PokemonDB`;
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (1, 1, 'Bulbasaur', 'Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun\'s rays, the seed grows progressively larger.', 28, 15.2, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png', 'grass,poison');
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (2, 2, 'Ivysaur', 'There is a bud on this Pokémon\'s back. To support its weight, Ivysaur\'s legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it\'s a sign that the bud will bloom into a large flower soon.', 39, 28.7, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png', 'grass,poison');
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (3, 3, 'Venusaur', 'There is a large flower on Venusaur\'s back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower\'s aroma soothes the emotions of people.', 79, 220.5, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png', 'grass,poison');

COMMIT;

