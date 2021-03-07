CREATE SCHEMA IF NOT EXISTS `holocron` CHARACTER SET utf8;

USE holocron;

CREATE TABLE IF NOT EXISTS characters(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  height VARCHAR(3),
  mass VARCHAR(5),
  hair_color VARCHAR(255),
  skin_color VARCHAR(255),
  eye_color VARCHAR(255),
  birth_year VARCHAR(255),
  gender VARCHAR(255),
  homeworld VARCHAR(255),
  species VARCHAR(255),
  PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS planets(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  rotation_period VARCHAR(255),
  orbital_period VARCHAR(255),
  diameter VARCHAR(255),
  climate VARCHAR(255),
  gravity VARCHAR(255),
  terrain VARCHAR(255),
  surface_water VARCHAR(255),
  population VARCHAR(255),
  PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS species(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  classification VARCHAR(255),
  designation VARCHAR(255),
  average_height VARCHAR(255),
  skin_colors VARCHAR(255),
  hair_colors VARCHAR(255),
  eye_colors VARCHAR(255),
  average_lifespan VARCHAR(255),
  language VARCHAR(255),
  homeworld VARCHAR(255),
  PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS starships(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  model VARCHAR(255) NOT NULL,
  manufacturer VARCHAR(255) NOT NULL,
  cost_in_credits VARCHAR(255),
  length VARCHAR(255),
  max_atmosphering_speed VARCHAR(255),
  crew VARCHAR(255),
  passengers VARCHAR(255),
  cargo_capacity VARCHAR(255),
  consumables VARCHAR(255),
  hyperdrive_rating VARCHAR(255),
  mglt VARCHAR(255),
  starship_class VARCHAR(255),
  PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS vehicles(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  model VARCHAR(255),
  manufacturer VARCHAR(255),
  cost_in_credits VARCHAR(255),
  length VARCHAR(255),
  max_atmosphering_speed VARCHAR(255),
  crew INT,
  passengers VARCHAR(255),
  cargo_capacity VARCHAR(255),
  consumables VARCHAR(255),
  vehicle_class VARCHAR(255),
  PRIMARY KEY(id)
)ENGINE=InnoDB;

LOAD DATA LOCAL INFILE '/home/miguel/github/holocron/CSV/archive/characters.csv'
INTO TABLE characters
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/home/miguel/github/holocron/CSV/archive/planets.csv'
INTO TABLE planets
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/home/miguel/github/holocron/CSV/archive/species.csv'
INTO TABLE species
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/home/miguel/github/holocron/CSV/archive/starships.csv'
INTO TABLE starships
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/home/miguel/github/holocron/CSV/archive/vehicles.csv'
INTO TABLE vehicles
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
