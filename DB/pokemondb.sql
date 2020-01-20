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
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (4, 4, 'Charmander', 'The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.', 24, 18.7, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', 'fire');
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (5, 5, 'Charmeleon', 'Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.', 41, 41.9, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png', 'fire');
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (6, 6, 'Charizard', 'Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.', 67, 199.5, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png', 'fire,flying');
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (7, 7, 'Squirtle', 'Squirtle\'s shell is not merely used for protection. The shell\'s rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.', 20, 19.8, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png', 'water');
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (8, 8, 'Wartortle', 'Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as Wartortle ages. The scratches on its shell are evidence of this Pokémon\'s toughness as a battler.', 39, 49.6, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png', 'water');
INSERT INTO `pokemon` (`id`, `pokedex_number`, `name`, `description`, `height_inches`, `weight_pounds`, `image_url`, `type`) VALUES (9, 9, 'Blastoise', 'Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.', 69, 188.5, 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png', 'water');

COMMIT;

