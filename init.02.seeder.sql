INSERT INTO employee (employee_id, last_name, first_name, birth_date, hire_date, address, city, counttry, reorts_to) 
VALUES
(1, 'Smith', 'John', '1980-03-15', '2010-06-01', '123 Elm Street, Apt 4B', 'New York', 'USA', NULL),
(2, 'Doe', 'Jane', null, null, '456 Maple Avenue', 'Los Angeles', 'USA', 1),
(3, 'Brown', 'Michael', '1975-11-30', null, '789 Oak Lane', 'Chicago', 'USA', 1),
(4, 'Johnson', 'Emily', '1990-05-05', null, '101 Pine Street, Suite 200', 'Houston', 'USA', 2),
(5, 'Taylor', 'Chris', '1982-10-17', '2011-04-30', '202 Birch Road', 'Philadelphia', 'USA', 3),
(6, 'Anderson', 'Jessica', '1993-12-25', '2017-11-01', '303 Cedar Court', 'Phoenix', 'USA', 4),
(7, 'Thomas', 'David', null, null, '404 Spruce Drive', 'San Antonio', 'USA', 5),
(8, 'Moore', 'Laura', '1987-09-19', '2013-12-20', '505 Walnut Way', 'San Diego', 'USA', 3),
(9, 'Jackson', 'Robert', '1983-04-12', '2010-05-15', '606 Cherry Circle', 'Dallas', 'USA', 1),
(10, 'White', 'Sophia', '1991-01-02', '2016-07-07', '707 Ash Avenue', 'San Jose', 'USA', 2);

INSERT INTO category (category_id, name, description, parent_category_id) 
VALUES
(1, 'Technology', 'Latest generation technology products', NULL),
(2, 'Electronics', 'Electronic devices and gadgets', 1),
(3, 'Software', 'Programs and applications', 1),
(4, 'Hardware', 'Computer components', 1),
(5, 'Energy', 'Sustainable energy solutions', NULL),
(6, 'Renewable Energy', 'Solar, wind, and other renewable energies', 5),
(7, 'Construction', 'Construction materials and services', NULL),
(8, 'Furniture', 'Furniture and decoration', NULL),
(9, 'Food', 'Food products', NULL),
(10, 'Beverages', 'Alcoholic and non-alcoholic drinks', 9);

INSERT INTO customer (customer_id, contact_name, company_name, contact_email, address, city, country) 
VALUES
(1, 'Daniel Morales', 'Innovatech Solutions', 'daniel.morales@example.com', '123 Liberty Ave, Floor 5, Office 502', 'New York', 'USA'),
(2, 'Valeria Lopez', 'Global Nexus Corp', 'valeria.lopez@example.net', '567 Royal Street, Panorama Building, Level 3', 'Los Angeles', 'USA'),
(3, 'Alejandro Fernandez', 'EcoFuture Enterprises', 'alejandro.fernandez@samplemail.com', '890 Central Plaza, Suite 304', 'Chicago', 'USA'),
(4, 'Camila Rios', 'TechWave Systems', 'camila.rios@mailservice.org', '45 Boulevard of the Heroes, Alpha Tower', 'Houston', 'USA'),
(5, 'Jose Ramirez', 'UrbanVision Group', 'jose.ramirez@webmail.net', '234 9th of July Street, Floor 7', 'Philadelphia', 'USA'),
(6, 'Laura Martinez', 'GreenSphere Ltd.', 'laura.martinez@domainmail.com', '678 Revolution Ave, Downtown', 'Phoenix', 'USA'),
(7, 'Andres Torres', 'Quantum Dynamics', 'andres.torres@fastmail.org', '111 Main Street, Office 203', 'San Antonio', 'USA'),
(8, 'Mariana Gomez', 'SmartGrid Innovations', 'mariana.gomez@postbox.net', '456 Constitution Ave, Modern Building', 'San Diego', 'USA'),
(9, 'Francisco Herrera', 'BlueSky Technologies', 'francisco.herrera@onlinemail.com', '789 Reform Walk, Executive Tower', 'Dallas', 'USA'),
(10, 'Natalia Sanchez', 'Fusion Energy Partners', 'natalia.sanchez@servicemail.org', '345 Alameda Street, Floor 2', 'San Jose', 'USA');

INSERT INTO product (product_id, product_name, category_id, quantity_per_unit, unit_price, units_in_stock, discontinued) 
VALUES
(1, 'Laptop Pro 15"', 2, 3, 1200.99, 50, FALSE),
(2, 'Smartphone XL', 2, 8, 899.50, 100, FALSE),
(3, 'Business Management Software', 3, 1, 299.99, 200, FALSE),
(4, 'SSD Hard Drive 1TB', 4, 5, 150.00, 75, FALSE),
(5, '300W Solar Panel', 6, 1, 400.00, 30, FALSE),
(6, 'Energy Inverter', 6, 1, 500.00, 20, FALSE),
(7, 'Portland Cement', 7, 3, 10.00, 500, FALSE),
(8, 'Leather Armchair', 8, 1, 250.00, 15, FALSE),
(9, 'Italian Pasta', 9, 1, 2.99, 100, FALSE),
(10, 'Red Wine Reserve', 10, 1, 20.00, 60, FALSE);

INSERT INTO purchase (purchase_id, customer_id, employee_id, total_price, purchase_data, shipped_data, ship_addres, ship_city, ship_counttry) 
VALUES
(1, 1, 3, 1500.99, '2024-08-01 10:00:00', '2024-08-02 10:00:00', '123 Liberty Ave, Floor 5, Office 502', 'New York', 'USA'),
(2, 2, 5, 899.50, '2024-08-03 12:30:00', '2024-08-04 14:00:00', '567 Royal Street, Panorama Building, Level 3', 'Los Angeles', 'USA'),
(3, 3, 2, 500.00, '2024-08-05 09:15:00', '2024-08-06 11:00:00', '890 Central Plaza, Suite 304', 'Chicago', 'USA'),
(4, 4, 7, 100.00, '2024-08-06 15:45:00', '2024-08-08 08:30:00', '45 Boulevard of the Heroes, Alpha Tower', 'Houston', 'USA'),
(5, 3, 1, 1200.00, '2024-08-07 08:00:00', '2024-08-09 09:00:00', '234 9th of July Street, Floor 7', 'Philadelphia', 'USA'),
(6, 4, 6, 750.00, '2024-08-08 14:00:00', '2024-08-10 10:00:00', '678 Revolution Ave, Downtown', 'Phoenix', 'USA'),
(7, 3, 8, 130.00, '2024-08-09 16:30:00', '2024-08-11 13:00:00', '111 Main Street, Office 203', 'San Antonio', 'USA'),
(8, 8, 4, 600.00, '2024-08-10 10:45:00', '2024-08-12 15:00:00', '456 Constitution Ave, Modern Building', 'San Diego', 'USA'),
(9, 9, 9, 250.00, '2024-08-11 11:00:00', '2024-08-13 17:00:00', '789 Reform Walk, Executive Tower', 'Dallas', 'USA'),
(10, 10, 10, 500.00, '2024-08-12 13:00:00', '2024-08-14 19:00:00', '345 Alameda Street, Floor 2', 'San Jose', 'USA');

INSERT INTO purchase_item (purchase_id, product_id, unit_price, quantity) 
VALUES
(1, 1, 1200.99, 1),
(1, 4, 150.00, 2),
(2, 2, 899.50, 1),
(3, 5, 400.00, 1),
(3, 6, 500.00, 1),
(4, 7, 10.00, 10),
(5, 1, 1200.99, 1),
(6, 3, 299.99, 2),
(7, 8, 200.99, 2),
(8, 5, 299.99, 2);