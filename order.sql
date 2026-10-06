CREATE TABLE IF NOT EXISTS salesman (
    salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    commission TEXT,
    
);
INSERT INTO salesman (salesman_id, name, city, commission) VALUES 
('5001', 'James Hoog', 'New York', '0.15'),
('5002', 'Nail Knite', 'Paris', '0.13'),
('5005', 'Pit Alex', 'London', '0.11'),
('5006', 'Mc Lyon', 'Paris', '0.14'),
('5007', 'Paul Adam', 'Rome', '0.13');
('5003', 'Lauson Hen', 'San Jose', '0.12');

SELECT * FROM salesman;

CREATE TABLE IF NOT EXISTS orders (
    ord_no TEXT PRIMARY KEY,
    punch_amt TEXT,
    ord_date TEXT,
    customer_id  TEXT,
    Salesman_id TEXT
);

INSERT INTO orders (ord_no, punch_amt, ord_date, customer_id, Salesman_id) VALUES 
('70001', '150.5', '2012-10-05', '3005', '5002'),
('70009', '270.65', '2012-09-10', '3001', '5005'),
('70002', '65.26', '2012-10-05', '3002', '5001'),
('70004', '110.5', '2012-08-17', '3009', '5006'),
('70007', '948.5', '2012-09-10', '3005', '5003'),
('70005', '2400.6', '2012-07-27', '3007', '5001'),

SELECT * FROM orders;

SELECT name, Commission 
FROM salesman;