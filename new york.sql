CREATE TABLE IF NOT EXISTS Restraunts (
    Name TEXT,
    Neighbourhood TEXT,
    Cuisine TEXT,
    Review REAL,
    Price TEXT,
    Health TEXT
);

INSERT INTO Restraunts (Name, Neighbourhood, Cuisine, Review, Price, Health) VALUES
('The Modern', 'Midtown', 'American', 4.5, '$$$$', 'A'),
('Le Bernardin', 'Midtown', 'French', 3.7, '$$$$', 'A'),
('Momofuku Candy Bar', 'East Village', 'Chinese', 5.0, '$$$', 'A'),
('Shake Shack', 'Madison Square Park', 'Fast Food', 3.1, '$$', 'A'),
('Peter Luger Steak House', 'Williamsburg', 'Steakhouse', 4.8, '$$$$', 'B'),
('Russ & Daughters Cafe', 'Lower East Side', 'Italian', 4.4, '$$', 'A'),
('Carbone', 'Greenwich Village', 'Italian', 4.5, '$$$$', 'B'),
('Blue Hill at Stone Barns', 'Pocantico Hills', 'American', 4.9, '$$$$$', 'A');

SELECT DISTINCT neighbourhood
FROM Restraunts;

SELECT DISTINCT Cuisine
FROM Restraunts;

SELECT *
FROM Restraunts
WHERE cuisine = 'Chinese';

SELECT *
FROM Restraunts
WHERE review >= 4.0;

SELECT *
FROM Restraunts
WHERE Cuisine = 'Italian'
AND Price IN ('$$', '$$$');

SELECT *
FROM Restraunts
WHERE Price = '$$$';

SELECT *
FROM Restraunts
WHERE Name LIKE '%Candy%';

SELECT *
FROM Restraunts
WHERE Neighbourhood IN ('Midtown', 'Greenwich Village');

SELECT *
FROM Restraunts
WHERE Health = '' OR health IS NULL;

SELECT *
FROM Restraunts
ORDER BY Review DESC
LIMIT 4;