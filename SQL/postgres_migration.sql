CREATE SCHEMA IF NOT EXISTS holocron;

CREATE TABLE IF NOT EXISTS holocron.characters(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  height VARCHAR(3),
  mass VARCHAR(5),
  hair_color VARCHAR(255),
  skin_color VARCHAR(255),
  eye_color VARCHAR(255),
  birth_year VARCHAR(255),
  gender VARCHAR(255),
  homeworld VARCHAR(255),
  species VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS holocron.planets(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  rotation_period VARCHAR(255),
  orbital_period VARCHAR(255),
  diameter VARCHAR(255),
  climate VARCHAR(255),
  gravity VARCHAR(255),
  terrain VARCHAR(255),
  surface_water VARCHAR(255),
  population VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS holocron.species(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  classification VARCHAR(255),
  designation VARCHAR(255),
  average_height VARCHAR(255),
  skin_colors VARCHAR(255),
  hair_colors VARCHAR(255),
  eye_colors VARCHAR(255),
  average_lifespan VARCHAR(255),
  language VARCHAR(255),
  homeworld VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS holocron.starships(
  id SERIAL PRIMARY KEY,
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
  starship_class VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS holocron.vehicles(
  id SERIAL PRIMARY KEY,
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
  vehicle_class VARCHAR(255)
);

COPY holocron.characters(id, name, height, mass, hair_color, skin_color, eye_color, birth_year, gender, homeworld, species)
FROM '/Users/miguel/github/holocron/CSV/archive/characters.csv'
DELIMITER ','
CSV HEADER;

COPY holocron.planets(id, name, rotation_period, orbital_period, diameter, climate, gravity, terrain, surface_water, population)
FROM '/Users/miguel/github/holocron/CSV/archive/planets.csv'
DELIMITER ','
CSV HEADER;

COPY holocron.species(id, name, classification, designation, average_height, skin_colors, hair_colors, eye_colors, average_lifespan, language, homeworld)
FROM '/Users/miguel/github/holocron/CSV/archive/species.csv'
DELIMITER ','
CSV HEADER;

COPY holocron.starships(id, name, model, manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, hyperdrive_rating, mglt, starship_class)
FROM '/Users/miguel/github/holocron/CSV/archive/starships.csv'
DELIMITER ','
CSV HEADER;

COPY holocron.vehicles(id, name, model, manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, vehicle_class)
FROM '/Users/miguel/github/holocron/CSV/archive/vehicles.csv'
DELIMITER ','
CSV HEADER;