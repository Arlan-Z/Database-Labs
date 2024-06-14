-- Task 1 Create PL/pgSQL function that takes a name as a parameter and returns a greeting message. (e.g. Hello, Dilyara!). Check how the function works.
CREATE FUNCTION greeting(
    name varchar
)
returns varchar AS $$
DECLARE
    greeting_message varchar;
BEGIN
    greeting_message = 'hello, ' || name || '!';
    return greeting_message;
END;
    $$
LANGUAGE plpgsql;

SELECT greeting('Arlan');

-- Task 2 Create PL/pgSQL function which calculates the area of a circle given its radius. It has a default radius of 1 if none is provided. Check how the function works.
CREATE OR REPLACE FUNCTION calculate_area(
    radius INTEGER
)
returns FLOAT AS $$
DECLARE
    area FLOAT;
BEGIN
    area = 3.14 * 3.14 * radius;
    return area;
END;
$$
LANGUAGE plpgsql;

SELECT calculate_area(2);


-- Task 3 Create PL/pgSQL function performs division and returns the result through an OUT  parameter. It includes error handling to avoid division by zero. Check how the function works.
CREATE OR REPLACE FUNCTION divide(
    IN number float,
    IN divisor float,
    OUT result float
)

AS $$
    BEGIN
    result := number / divisor;

    exception
        WHEN division_by_zero then raise exception 'Cannot divide by 0';
END;
    $$
LANGUAGE plpgsql;

SELECT divide(4, 0);

-- Task 4 Now use your Sales database. First, delete all users with ids 80 and 97 from table products as well as from other related tables.
delete from orders
where product_id = 80 or product_id = 97;

delete
from products
where id = 80 or id = 97;

-- Task 5 Create a function get_price_boundaries_by_paid that results in a minimum and maximum price for paid or unpaid items. The function must take true or false as an argument. Check how the function works
CREATE OR REPLACE FUNCTION get_price_boundaries_by_paid
    (
        IN is_paid BOOLEAN,
        OUT max integer,
        OUT min integer
    )
AS $$
    BEGIN
    max := (SELECT max(p.price) FROM products p JOIN orders o on p.id = o.product_id WHERE o.paid = is_paid);
    min := (SELECT min(p.price) FROM products p JOIN orders o on p.id = o.product_id WHERE o.paid = is_paid);
    END;
    $$
LANGUAGE plpgsql;

SELECT get_price_boundaries_by_paid(false);
SELECT get_price_boundaries_by_paid(true);


-- Task 6 Modify the function get_price_boundaries_by_paid by setting the default argument to true. Check how the function works.

CREATE OR REPLACE FUNCTION get_price_boundaries_by_paid
    (
        IN is_paid BOOLEAN default TRUE,
        OUT max integer,
        OUT min integer
    )
AS $$
    BEGIN
    max := (SELECT max(p.price) FROM products p JOIN orders o on p.id = o.product_id WHERE o.paid = is_paid);
    min := (SELECT min(p.price) FROM products p JOIN orders o on p.id = o.product_id WHERE o.paid = is_paid);
    END;
    $$
LANGUAGE plpgsql;

SELECT get_price_boundaries_by_paid(false);
SELECT get_price_boundaries_by_paid(true);

SELECT get_price_boundaries_by_paid();

-- Task 7 Create a function get_sum_avg_prices_by_department to get the sum and average price foreach of the departments. The function takes no arguments and returns the entire list of departments. Use RETURNS TABLE. Check how the function works
CREATE OR REPLACE FUNCTION get_sum_avg_prices_by_department()
RETURNS TABLE (department varchar, average numeric, sum bigint)
AS
    $$
    BEGIN
        RETURN QUERY
        SELECT
            p.department, avg(price), sum(price)
        FROM products p
        GROUP BY p.department;

    end;
    $$ LANGUAGE plpgsql;

SELECT * FROM get_sum_avg_prices_by_department();

--Task 8 Modify the function get_sum_avg_prices_by_department. Now the function should take an argument (department name) and give information only on it. Check how the function works.
CREATE OR REPLACE FUNCTION get_sum_avg_prices_by_department(find_department varchar)
RETURNS TABLE (department varchar, average numeric, sum bigint)
AS
    $$
    BEGIN
        RETURN QUERY
        SELECT
            p.department, avg(price), sum(price)
        FROM products p
                WHERE p.department = find_department
        GROUP BY p.department;

    end;
    $$ LANGUAGE plpgsql;

SELECT * FROM get_sum_avg_prices_by_department('Tools');

-- Task 9 Delete all functions.
DROP FUNCTION calculate_area(radius INTEGER);
drop function get_sum_avg_prices_by_department();
drop function get_sum_avg_prices_by_department(find_department varchar);
drop function get_price_boundaries_by_paid(is_paid BOOLEAN);
drop function divide(number float, divisor float);
drop function greeting(name varchar);

-- Additional Task 1
CREATE OR REPLACE FUNCTION calculate_area_of_trapezoid(
    upper FLOAT,
    lower INTEGER,
    height INTEGER
)
returns FLOAT AS $$
DECLARE
    area FLOAT;
BEGIN
    area = ((upper + lower) / 2) * height;
    return area;
END;
$$
LANGUAGE plpgsql;

SELECT calculate_area_of_trapezoid(4.0,3,5);

SELECT calculate_area_of_trapezoid(3.6,5,7);

-- Additional Task 2

CREATE OR REPLACE FUNCTION get_total_weight_by_department(find_department varchar)
RETURNS TABLE (department varchar, sum bigint)
AS
    $$
    BEGIN
        RETURN QUERY
        SELECT
            p.department, sum(weight)
        FROM products p
        WHERE p.department = find_department
        GROUP BY p.department;

    end;
    $$ LANGUAGE plpgsql;

SELECT * FROM get_total_weight_by_department('Tools');