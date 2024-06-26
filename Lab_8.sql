CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR
);
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  department VARCHAR,
  price INTEGER,
  weight INTEGER
);
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  product_id INTEGER REFERENCES products(id),
  order_date date,
  shipment_date date,
  paid BOOLEAN
);


INSERT INTO users (first_name, last_name)
VALUES
  ('Iva', 'Lindgren'),
	('Ignatius', 'Johns'),
	('Jannie', 'Boehm'),
	('Neal', 'Wehner'),
	('Mikayla', 'Casper'),
	('Patience', 'Stracke'),
	('Josianne', 'Gerhold'),
	('Kailee', 'Jacobson'),
	('Marlen', 'Hickle'),
	('Pansy', 'Daugherty'),
	('Vinnie', 'Feest'),
	('Cierra', 'Johns'),
	('Violette', 'Heathcote'),
	('Stan', 'Rath'),
	('Neha', 'Hyatt'),
	('Kaylah', 'Gleason'),
	('Jacky', 'Hegmann'),
	('Duane', 'Lockman'),
	('Sonya', 'Marquardt'),
	('Brenden', 'Streich'),
	('Laurianne', 'Douglas'),
	('Orlando', 'Kerluke'),
	('Irma', 'Wintheiser'),
	('Cletus', 'Schultz'),
	('Jermaine', 'Langosh'),
	('Alexanne', 'Dickens'),
	('Garret', 'Williamson'),
	('Max', 'Goodwin'),
	('Tad', 'Wilderman'),
	('Lindsay', 'Yost'),
	('Elliot', 'Oberbrunner'),
	('Brendan', 'Thompson'),
	('Brennan', 'Auer'),
	('Luigi', 'Johnston'),
	('Garth', 'McLaughlin'),
	('Ressie', 'Nikolaus'),
	('Ruby', 'Turner'),
	('Caden', 'Turcotte'),
	('Armand', 'Kshlerin'),
	('Albertha', 'Yundt'),
	('Kathryn', 'Mueller'),
	('Arely', 'McGlynn'),
	('Lawrence', 'Casper'),
	('Johathan', 'Kirlin'),
	('Clara', 'Gerhold'),
	('Miller', 'Feil'),
	('Rosendo', 'Sawayn'),
	('Sally', 'Mann'),
	('Kennith', 'Hettinger'),
	('Mathilde', 'Eichmann');


INSERT INTO products (name, department, price, weight)
VALUES
  ('Practical Fresh Shirt', 'Toys', 876.00, 3),
	('Gorgeous Steel Towels', 'Outdoors', 412.00, 16),
	('Rustic Plastic Bacon', 'Movies', 10.00, 6),
	('Tasty Wooden Ball', 'Industrial', 796.00, 23),
	('Fantastic Soft Fish', 'Tools', 10.00, 10),
	('Gorgeous Concrete Towels', 'Grocery', 328.00, 11),
	('Incredible Granite Mouse', 'Home', 989.00, 2),
	('Gorgeous Rubber Ball', 'Books', 801.00, 4),
	('Generic Fresh Computer', 'Toys', 926.00, 11),
	('Unbranded Cotton Shoes', 'Sports', 298.00, 29),
	('Fantastic Metal Chair', 'Home', 887.00, 9),
	('Ergonomic Metal Pizza', 'Jewelery', 463.00, 16),
	('Ergonomic Steel Car', 'Outdoors', 53.00, 20),
	('Licensed Steel Car', 'Movies', 664.00, 10),
	('Tasty Metal Cheese', 'Beauty', 650.00, 17),
	('Handcrafted Rubber Towels', 'Baby', 945.00, 6),
	('Intelligent Metal Mouse', 'Music', 509.00, 7),
	('Awesome Cotton Salad', 'Shoes', 211.00, 16),
	('Unbranded Plastic Pizza', 'Industrial', 72.00, 9),
	('Practical Concrete Sausages', 'Industrial', 408.00, 9),
	('Handcrafted Frozen Chair', 'Garden', 411.00, 16),
	('Generic Cotton Pizza', 'Home', 555.00, 4),
	('Intelligent Cotton Chips', 'Books', 280.00, 21),
	('Small Plastic Soap', 'Beauty', 345.00, 1),
	('Small Wooden Pizza', 'Garden', 307.00, 7),
	('Rustic Rubber Soap', 'Beauty', 127.00, 2),
	('Handmade Plastic Gloves', 'Sports', 301.00, 10),
	('Unbranded Cotton Tuna', 'Jewelery', 633.00, 10),
	('Practical Plastic Towels', 'Games', 379.00, 20),
	('Practical Wooden Shoes', 'Computers', 112.00, 20),
	('Sleek Granite Towels', 'Toys', 797.00, 30),
	('Practical Rubber Mouse', 'Garden', 948.00, 15),
	('Handcrafted Concrete Bike', 'Toys', 748.00, 10),
	('Rustic Granite Chair', 'Electronics', 76.00, 8),
	('Unbranded Wooden Ball', 'Sports', 384.00, 2),
	('Licensed Frozen Chair', 'Books', 417.00, 9),
	('Handmade Rubber Chicken', 'Movies', 959.00, 22),
	('Awesome Fresh Keyboard', 'Home', 982.00, 30),
	('Generic Fresh Hat', 'Baby', 791.00, 25),
	('Licensed Plastic Keyboard', 'Garden', 433.00, 17),
	('Fantastic Steel Chicken', 'Computers', 472.00, 17),
	('Tasty Rubber Soap', 'Tools', 823.00, 6),
	('Refined Wooden Mouse', 'Music', 842.00, 15),
	('Gorgeous Steel Cheese', 'Movies', 548.00, 9),
	('Fantastic Fresh Sausages', 'Industrial', 360.00, 26),
	('Incredible Granite Bacon', 'Music', 982.00, 9),
	('Handcrafted Fresh Sausages', 'Games', 231.00, 21),
	('Intelligent Fresh Ball', 'Home', 619.00, 9),
	('Handmade Plastic Fish', 'Games', 312.00, 23),
	('Handcrafted Cotton Bacon', 'Kids', 480.00, 12),
	('Sleek Rubber Shoes', 'Jewelery', 597.00, 6),
	('Handmade Granite Fish', 'Electronics', 166.00, 14),
	('Practical Wooden Chips', 'Toys', 707.00, 4),
	('Handmade Rubber Salad', 'Outdoors', 232.00, 13),
	('Unbranded Granite Shirt', 'Music', 519.00, 13),
	('Gorgeous Plastic Sausages', 'Movies', 556.00, 2),
	('Awesome Steel Mouse', 'Clothing', 175.00, 5),
	('Licensed Steel Towels', 'Industrial', 939.00, 23),
	('Handcrafted Fresh Bacon', 'Sports', 387.00, 29),
	('Fantastic Cotton Shirt', 'Health', 496.00, 24),
	('Licensed Cotton Sausages', 'Sports', 751.00, 27),
	('Ergonomic Fresh Pants', 'Baby', 638.00, 30),
	('Handcrafted Frozen Shoes', 'Sports', 84.00, 1),
	('Small Concrete Pants', 'Health', 487.00, 19),
	('Intelligent Plastic Car', 'Shoes', 628.00, 13),
	('Intelligent Cotton Chips', 'Baby', 521.00, 22),
	('Licensed Steel Towels', 'Health', 132.00, 11),
	('Sleek Soft Computer', 'Movies', 619.00, 7),
	('Fantastic Fresh Shirt', 'Tools', 643.00, 17),
	('Generic Fresh Shoes', 'Kids', 628.00, 29),
	('Sleek Fresh Gloves', 'Clothing', 919.00, 15),
	('Gorgeous Rubber Keyboard', 'Baby', 32.00, 8),
	('Handcrafted Soft Chicken', 'Kids', 720.00, 8),
	('Small Metal Mouse', 'Baby', 60.00, 6),
	('Fantastic Fresh Chips', 'Home', 966.00, 14),
	('Awesome Metal Pants', 'Shoes', 460.00, 8),
	('Handcrafted Frozen Chips', 'Shoes', 564.00, 19),
	('Gorgeous Plastic Gloves', 'Movies', 341.00, 14),
	('Rustic Metal Salad', 'Health', 240.00, 12),
	('Small Fresh Gloves', 'Garden', 991.00, 8),
	('Small Fresh Bacon', 'Baby', 473.00, 10),
	('Refined Rubber Tuna', 'Garden', 1.00, 21),
	('Small Metal Chips', 'Home', 161.00, 27),
	('Unbranded Fresh Tuna', 'Home', 657.00, 9),
	('Refined Metal Hat', 'Industrial', 309.00, 21),
	('Refined Concrete Pants', 'Sports', 724.00, 2),
	('Licensed Plastic Salad', 'Beauty', 834.00, 5),
	('Licensed Soft Chicken', 'Toys', 425.00, 13),
	('Fantastic Granite Soap', 'Home', 666.00, 29),
	('Awesome Steel Towels', 'Baby', 552.00, 10),
	('Ergonomic Wooden Tuna', 'Garden', 778.00, 29),
	('Fantastic Wooden Chair', 'Jewelery', 145.00, 26),
	('Tasty Granite Chips', 'Home', 37.00, 9),
	('Tasty Rubber Table', 'Computers', 525.00, 29),
	('Ergonomic Granite Shoes', 'Beauty', 48.00, 12),
	('Refined Metal Tuna', 'Jewelery', 708.00, 23),
	('Intelligent Rubber Chicken', 'Industrial', 1.00, 11),
	('Practical Steel Shoes', 'Toys', 947.00, 14),
	('Handcrafted Rubber Shoes', 'Sports', 275.00, 6),
	('Intelligent Cotton Gloves', 'Home', 447.00, 29);


INSERT INTO orders (user_id, product_id, order_date, shipment_date, paid)
VALUES
  	(27, 99,'2023-09-01', '2023-09-04', false),
	(50, 72, '2023-09-07', '2023-09-10', false),
	(24, 81, '2023-09-14', '2023-09-16', true),
	(24, 54, '2023-09-14', '2023-09-15', true),
	(1, 6, '2023-09-07', '2023-09-9', true),
	(17, 25, '2023-09-08', '2023-09-10', false),
	(8, 5, '2023-09-08', '2023-09-11', true),
	(34, 3, '2023-09-09', '2023-09-10', true),
	(41, 19, '2023-09-10', '2023-09-14', true),
	(15, 23, '2023-09-10', '2023-09-12', true),
	(23, 60, '2023-09-11', '2023-09-14', true),
	(31, 44, '2023-09-12', '2023-09-14',  true),
	(46, 34, '2023-09-12', '2023-09-15',  false),
	(11, 76, '2023-09-12', '2023-09-17', false),
	(44, 74, '2023-09-12', '2023-09-13', true),
	(18, 58, '2023-09-13', '2023-09-16', true),
	(40, 1, '2023-09-13', '2023-09-17', false),
	(41, 22, '2023-09-13', '2023-09-17', true),
	(10, 20, '2023-09-13', '2023-09-19', false),
	(50, 49, '2023-09-13', '2023-09-18', false),
	(14, 30, '2023-09-14', '2023-09-16', true),
	(4, 38, '2023-09-14', '2023-09-19', false),
	(42, 34, '2023-09-14', '2023-09-20', true),
	(22, 16, '2023-09-14', '2023-09-21', false),
	(4, 89, '2023-09-15', '2023-09-16', true),
	(49, 18, '2023-09-15', '2023-09-17', true),
	(35, 30, '2023-09-15', '2023-09-20', true),
	(7, 59, '2023-09-15', '2023-09-19', false),
	(31, 25, '2023-09-17', '2023-09-19', true),
	(43, 16, '2023-09-17', '2023-09-20', false),
	(18, 27, '2023-09-18', '2023-09-19', false),
	(47, 91, '2023-09-18', '2023-09-21', true),
	(32, 22, '2023-09-19', '2023-09-21', false),
	(5, 11, '2023-09-20', '2023-09-22', false),
	(14, 68, '2023-09-21', '2023-09-23', false),
	(19, 8, '2023-09-21', '2023-09-24', false),
	(43, 74, '2023-09-22', '2023-09-23', true),
	(29, 1, '2023-09-22', '2023-09-26', false),
	(7, 6, '2023-09-24', '2023-09-25', true),
	(16, 3, '2023-09-24', '2023-09-29', true),
	(29, 15, '2023-09-25', '2023-09-26', false),
	(25, 80, '2023-09-25', '2023-09-28', true),
	(5, 15, '2023-09-25', '2023-09-28', true),
	(23, 9,  '2023-09-26', '2023-09-28',true),
	(20, 28, '2023-09-27', '2023-09-30', false),
	(18, 21, '2023-09-27', '2023-09-28', true),
	(34, 27, '2023-09-28', '2023-09-30', false),
	(33, 44, '2023-09-29', '2023-10-01', true),
	(26, 18, '2023-09-29', '2023-10-02', false),
	(10, 42, '2023-09-30', '2023-10-02', false),
	(49, 47, '2023-09-30', '2023-10-03', true),
	(4, 87, '2023-10-01', '2023-10-02', true),
	(8, 82, '2023-10-01', '2023-10-03', true),
	(32, 96, '2023-10-02', '2023-10-03', true),
	(3, 88, '2023-10-02', '2023-10-06', true),
	(2, 8, '2023-10-03', '2023-10-04', true),
	(49, 25, '2023-10-03', '2023-10-06', false),
	(3, 34, '2023-10-03', '2023-10-07', true),
	(38, 81, '2023-10-04', '2023-10-05', false),
	(41, 69, '2023-10-05', '2023-10-07', true),
	(50, 19, '2023-10-05', '2023-10-09',true),
	(44, 44, '2023-10-05', '2023-10-09', false),
	(20, 52, '2023-10-06', '2023-10-08', false),
	(16, 44, '2023-10-06', '2023-10-09', false),
	(50, 62, '2023-10-06', '2023-10-11', false),
	(47, 4, '2023-10-07', '2023-10-11', false),
	(4, 2, '2023-10-07', '2023-10-10', true),
	(36, 56, '2023-10-08', '2023-10-11', true),
	(49, 18, '2023-10-08', '2023-10-13', true),
	(20, 63, '2023-10-08', '2023-10-09', true),
	(18, 44, '2023-10-09', '2023-10-10', true),
	(30, 69, '2023-10-09', '2023-10-11', true),
	(33, 52, '2023-10-09', '2023-10-13', true),
	(18, 1, '2023-10-10', '2023-10-11', true),
	(39, 94, '2023-10-10', '2023-10-12', true),
	(39, 53, '2023-10-10', '2023-10-15', true),
	(31, 75, '2023-10-11', '2023-10-13', true),
	(39, 64, '2023-10-12', '2023-10-14', false),
	(33, 46, '2023-10-12', '2023-10-15', false),
	(16, 43, '2023-10-12', '2023-10-17', false),
	(41, 41, '2023-10-13', '2023-10-14', false),
	(33, 77, '2023-10-13', '2023-10-16', true),
	(8, 95, '2023-10-13', '2023-10-18', false),
	(16, 75, '2023-10-13', '2023-10-15', false),
	(4, 12, '2023-10-14', '2023-10-16', false),
	(14, 4, '2023-10-14', '2023-10-15', true),
	(31, 90, '2023-10-14', '2023-10-17', true),
	(30, 77, '2023-10-15', '2023-10-16', true),
	(44, 53, '2023-10-15', '2023-10-19', false),
	(34, 70, '2023-10-15', '2023-10-18', true),
	(23, 76, '2023-10-16', '2023-10-20', false),
	(22, 87, '2023-10-16', '2023-10-17', false),
	(45, 15, '2023-10-16', '2023-10-21', true),
	(14, 15, '2023-10-17', '2023-10-20', true),
	(6, 11, '2023-10-17', '2023-10-21', true),
	(3, 84, '2023-10-17', '2023-10-18', false),
	(25, 89, '2023-10-18', '2023-10-20', true),
	(5, 66, '2023-10-18', '2023-10-22', true),
	(40, 70, '2023-10-18', '2023-10-21', false),
	(10, 95, '2023-10-18', '2023-10-21', true),
	(22, 39, '2023-10-19', '2023-10-20', true),
	(13, 13, '2023-10-19', '2023-10-24', false),
	(12, 46, '2023-10-19', '2023-10-21', false),
	(28, 77, '2023-10-20', '2023-10-22', false),
	(14, 67, '2023-10-20', '2023-10-22', false),
	(11, 52, '2023-10-20', '2023-10-25', false),
	(11, 6, '2023-10-21', '2023-10-22', false),
	(32, 17, '2023-10-21', '2023-10-26', true),
	(40, 79, '2023-10-21', '2023-10-24', true),
	(5, 84, '2023-10-22', '2023-10-25', true),
	(38, 67, '2023-10-22', '2023-10-25', false),
	(45, 8, '2023-10-23', '2023-10-25', false),
	(21, 90, '2023-10-23', '2023-10-26', true),
	(38, 9, '2023-10-23', '2023-10-24', true),
	(23, 33, '2023-10-24', '2023-10-25', false),
	(14, 32, '2023-10-24', '2023-10-26', false),
	(47, 71, '2023-10-24', '2023-10-29', false),
	(15, 63, '2023-10-25', '2023-10-29', true),
	(12, 13, '2023-10-25', '2023-10-26', true),
	(32, 76, '2023-10-26', '2023-10-29', true),
	(17, 23, '2023-10-26', '2023-10-28', true),
	(48, 20, '2023-10-26', '2023-10-30', false),
	(25, 29, '2023-10-27', '2023-10-29', true),
	(20, 18, '2023-10-27', '2023-10-30', true),
	(49, 6, '2023-10-28', '2023-10-29', true),
	(28, 97, '2023-10-28', '2023-10-30', false),
	(2, 29, '2023-10-28', '2023-10-31', true),
	(36, 96, '2023-10-29', '2023-10-31', false),
	(13, 99, '2023-10-30', '2023-10-31', false),
	(36, 70, '2023-10-30', '2023-11-02', false),
	(34, 38, '2023-10-31', '2023-11-02', true),
	(15, 11, '2023-10-31', '2023-11-01', false),
	(19, 17, '2023-10-31', '2023-11-04', false),
	(32, 73, '2023-11-01', '2023-11-04', true),
	(45, 27, '2023-11-01', '2023-11-02', true),
	(34, 86, '2023-11-01', '2023-11-03', false),
	(27, 68, '2023-11-02', '2023-11-03', true),
	(49, 90, '2023-11-02', '2023-11-04', false),
	(10, 60, '2023-11-02', '2023-11-06', true),
	(31, 84, '2023-11-03', '2023-11-05', false),
	(35, 83, '2023-11-03', '2023-11-06', false),
	(28, 43, '2023-11-03', '2023-11-04', false),
	(39, 95, '2023-11-04', '2023-11-06', false),
	(11, 53, '2023-11-04', '2023-11-05', true),
	(8, 89, '2023-11-04', '2023-11-08', true),
	(23, 7, '2023-11-04', '2023-11-07', true),
	(39, 42, '2023-11-04', '2023-11-05', false),
	(41, 60, '2023-11-05', '2023-11-06', false),
	(25, 18, '2023-11-05', '2023-11-09', true),
	(38, 88, '2023-11-05', '2023-11-07', false),
	(47, 69, '2023-11-05', '2023-11-08', true),
	(15, 13, '2023-11-05', '2023-11-08', true),
	(37, 35, '2023-11-06', '2023-11-07', false),
	(37, 52, '2023-11-06', '2023-11-07', true),
	(12, 80, '2023-11-06', '2023-11-09', false),
	(39, 40, '2023-11-06', '2023-11-10', true),
	(28, 23, '2023-11-07', '2023-11-08', false),
	(3, 58, '2023-11-07', '2023-11-09', false),
	(33, 92, '2023-11-07', '2023-11-10', false),
	(38, 51, '2023-11-08', NULL, true),
	(18, 15, '2023-11-08', '2023-11-09', false),
	(25, 57, '2023-11-08', '2023-11-10', false),
	(46, 28, '2023-11-08', NULL, false),
	(42, 49, '2023-11-09', NULL, true),
	(31, 5, '2023-11-09', NULL, true),
	(37, 29, '2023-11-09', '2023-11-10', false),
	(4, 64, '2023-11-09', '2023-11-10', true),
	(23, 12, '2023-11-10', NULL, false),
	(37, 93, '2023-11-10', NULL, true),
	(13, 46, '2023-11-10', NULL, true);


--  Task 3 Create a view named cheap_and_light_products that includes products with a price less than $100 and a weight less than 10
CREATE OR REPLACE VIEW "cheap_and_light_products" AS SELECT id,name,department ,price, weight from products WHERE price <= 100 and weight <= 10 WITH LOCAL CHECK OPTION;
SELECT * FROM cheap_and_light_products;

-- Task 4 Insert new value (101, 'Awesome Hot Chips', 'Grocery', 10, 2) into cheap_and_light_products. Can you do this? Why?
INSERT INTO cheap_and_light_products VALUES (101, 'Awesome Hot Chips', 'Grocery', 10, 2);
SELECT * FROM cheap_and_light_products;

-- Task 5 Insert new value (103, 'Soft Flanel Shirt', 'Clothes', 105, 1) into cheap_and_light_products. Can you do this? Why?
INSERT INTO cheap_and_light_products VALUES (103, 'Soft Flanel Shirt', 'Clothes', 105, 1); -- does not meet the conditions of the view
SELECT * FROM cheap_and_light_products;

-- Task 6 Create VIEW order_user with information about user's full name and order ID
CREATE OR REPLACE VIEW "order_user" AS SELECT u.first_name, u.last_name, o.id as order_id FROM users u JOIN orders o on u.id = o.user_id;
SELECT * FROM order_user;

-- Task 7 Retrieve full name from created order_user view, date of order for users, whose orders aren't shipped yet.
SELECT first_name, last_name, o2.order_date from order_user o join orders o2 on o2.id = o.order_id WHERE o.order_id in (SELECT id from orders WHERE shipment_date > current_date OR shipment_date is NULL);

-- Task 8 Retrieve full name of users who have placed orders in the 'Tools' department and paid for the order, use order_user view.
SELECT concat(first_name, ' ', last_name) as name from order_user o join orders o2 on o.order_id = o2.id join products p on p.id = o2.product_id WHERE p.department = 'Tools';

-- Task 9 List the users who have placed orders in the last 7 days, use order_user view
SELECT concat(first_name, ' ', last_name) as name from order_user o join orders o2 on o.order_id = o2.id WHERE o2.order_date > current_date - interval '2 week'; -- changed to 2 weeks because there are none orders in the last 7 days

-- Task 10 Change order_user view: retrieve user's full name and order ID just for unpaid orders.

CREATE OR REPLACE VIEW "order_user" AS SELECT u.first_name, u.last_name, o.id as order_id FROM users u JOIN orders o on u.id = o.user_id WHERE o.paid;
SELECT * FROM order_user;

-- Task 11 Create VIEW user_sum to find the users who have placed orders and their total spending (sum of product prices) on those orders.
CREATE OR REPLACE VIEW  "user_sum" AS SELECT u.id, u.first_name, u.last_name, sum(p.price) as total FROM users u join orders o on u.id = o.user_id join products p on o.product_id = p.id
GROUP BY u.first_name, u.id, u.last_name;
SELECT * FROM user_sum;

--Task 12 Find the users whose total spending less than 500, use view user_sum.

SELECT * FROM user_sum WHERE total <= 500;

-- Task 13 Delete all created views
DROP VIEW user_sum;
DROP VIEW order_user;
DROP VIEW cheap_and_light_products;

-- additional tasks
-- Task 1 Create VIEW dep_max to find the highest price in each department.
CREATE OR REPLACE VIEW "dep_max" AS SELECT department, price FROM products p1 WHERE price in (SELECT max(price) FROM products p2 WHERE p1.department = p2.department group by department );
SELECT * FROM dep_max;

-- Task 2 Find the products with the highest price in each department, use dep_max view.
SELECT * FROM products WHERE price = (SELECT price FROM dep_max WHERE products.department = dep_max.department)

-- Task 3 Is it possible to change this view? Why?
CREATE OR REPLACE VIEW "dep_max" AS SELECT department, price FROM products;
SELECT * FROM dep_max;

-- Yes it possible to change it


