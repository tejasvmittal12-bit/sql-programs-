CREATE TABLE IF NOT EXISTS zoo_animal (
    animal_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    species TEXT NOT NULL,
    age_years INTEGER NOT NULL,
    weight_kg REAL NOT NULL
);

INSERT INTO zoo_animal VALUES (1, 'Lion',   'Big Cat', 5, 190.5);
INSERT INTO zoo_animal VALUES (2, 'Tiger',   'Big Cat', 4, 200.0);
INSERT INTO zoo_animal VALUES (3, 'Elephant', 'Pachyderm', 10, 5400.0);
INSERT INTO zoo_animal VALUES (4, 'Giraffe', 'Ungulate', 7, 800.0);
INSERT INTO zoo_animal VALUES (5, 'Zebra',   'Ungulate', 6, 350.0);
INSERT INTO zoo_animal VALUES (6, 'Kangaroo', 'Marsupial', 3, 85.0);
INSERT INTO zoo_animal VALUES (7, 'Panda',   'Bear', 5, 100.0);
INSERT INTO zoo_animal VALUES (8, 'Penguin', 'Bird', 2, 30.0);

SELECT * FROM zoo_animal;

SELECT species FROM zoo_animal;

SELECT DISTINCT species FROM zoo_animal;

SELECT COUNT(DISTINCT species) AS unique_species FROM zoo_animal;

SELECT COUNT(animal_id) AS total_animals FROM zoo_animal;

SELECT COUNT(animal_id) AS older_than_5 FROM zoo_animal WHERE age_years > 5;

SELECT SUM(weight_kg) AS total_weight_kg FROM zoo_animal;

SELECT AVG(age_years) AS avg_age_years FROM zoo_animal;

SELECT
    COUNT(animal_id)        AS total_animals,
    COUNT(DISTINCT species) AS unique_species,
    SUM(weight_kg)         AS total_weight_kg,
    AVG(age_years)         AS avg_age_years
FROM zoo_animal;