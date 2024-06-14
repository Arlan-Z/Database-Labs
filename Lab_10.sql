-- Task 1 Create a transaction that inserts a new user and a new product simultaneously.
BEGIN;
INSERT INTO users(first_name, last_name) VALUES ('Arlan', 'Zhumagulov');
INSERT INTO products(id, name, department, price, weight) VALUES (560,'Toy horse', 'Games', 250.0, 203.3);
COMMIT;

-- Task 2 Create a transaction that inserts a new user and a new order for a specific product.
ROLLBACK;
BEGIN;
INSERT INTO users(first_name, last_name) VALUES ('Nikita', 'Asaev');
INSERT INTO orders(id, user_id, product_id, order_date, shipment_date, paid) VALUES (574, lastval(), 1, '2023-11-07', '2023-11-09', false);
COMMIT;

-- Task 3  Update the price of a product within a transaction and concurrently retrieve the total number of users, ensuring consistency within the transaction.
BEGIN;
UPDATE products set price = 2000 WHERE name = 'Practical Fresh Shirt';
SELECT count(last_name) from users join orders on users.id = orders.user_id join products on orders.product_id = products.id where products.name = 'Practical Fresh Shirt';
commit;

-- Task 4  Create a transaction that updates the price of a product and marks the corresponding order as paid, ensuring both operations succeed or fail together.
BEGIN;
UPDATE products set price = 2000 WHERE name = 'Practical Fresh Shirt' returning name, price as updated_price;
commit;

-- Task 5 Create a transaction that updates the weight of a product and ensures that other transactions can read the original value even before the transaction is committed.
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
UPDATE products set weight = 2000 WHERE name = 'Practical Fresh Shirt' returning name, weight as updated_weight;
commit;

-- Task 6 Create a transaction that inserts a new user and a new product. Ensure that no other transaction can read the changes until the first transaction is committed.
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
INSERT INTO users(first_name, last_name) VALUES ('Arman', 'BestFriendly');
INSERT INTO products(id, name, department, price, weight) VALUES (897,'GTA V', 'Games', 250.0, 203.3);
COMMIT;