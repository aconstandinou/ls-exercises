# Problem 1
createdb billing

psql -d billing

CREATE TABLE customers (
  id serial PRIMARY KEY,
  name text NOT NULL,
  payment_token varchar(8) NOT NULL UNIQUE CHECK (payment_token ~ '^[A-Z]{8}$')
);

CREATE TABLE services (
  id serial PRIMARY KEY,
  description text NOT NULL,
  price numeric(10, 2) NOT NULL CHECK(price >= 0.00)
);

INSERT INTO customers (name, payment_token) VALUES
  ('Pat Johnson', 'XHGOAHEQ'),
  ('Nancy Monreal', 'JKWQPJKL'),
  ('Lynn Blake', 'KLZXWEEE'),
  ('Chen Ke-Hua', 'KWETYCVX'),
  ('Scott Lakso', 'UUEAPQPS'),
  ('Jim Pornot', 'XKJEYAZA');

INSERT INTO services (description, price) VALUES
  ('Unix Hosting', 5.95),
  ('DNS', 4.95),
  ('Whois Registration', 1.95),
  ('High Bandwidth', 15.00),
  ('Business Surpport', 250.00),
  ('Dedicated Hosting', 50.00),
  ('Bulk Email', 250.00),
  ('One-to-one Training', 999.00);

CREATE TABLE join_customers_services (
  id serial PRIMARY KEY,
  customers_id integer NOT NULL,
  services_id integer NOT NULL,
  FOREIGN KEY (customers_id) REFERENCES customers(id),
  FOREIGN KEY (services_id) REFERENCES services(id)
);

INSERT INTO customers_services (customers_id, services_id) VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 4),
  (3, 5),
  (4, 1),
  (4, 4),
  (5, 1),
  (5, 2),
  (5, 6),
  (6, 1),
  (6, 6),
  (6, 7);

# Forgot to add ON DELETE CASCADE for the foreign key constraint for customers.
ALTER TABLE customers_services DROP CONSTRAINT customers_services_customers_id_fkey,
ADD CONSTRAINT customers_services_customers_id_fkey
   FOREIGN KEY (customers_id)
    REFERENCES customers(id)
    ON DELETE CASCADE;

# Problem 2

- Write a query to retrieve the customer data for every customer who currently subscribes to at least one service.
# inner join forces the connection, no need to GROUP BY or use AGGREGATE

SELECT DISTINCT customers.* FROM customers
INNER JOIN customers_services
        ON customers_services.customers_id = customers.id;

# Problem 3

- Write a query to retrieve the customer data for every customer who does not currently subscribe to any services.

SELECT customers.* FROM customers
LEFT JOIN customers_services ON customers.id = customers_services.customers_id
WHERE customers_services.id IS NULL;

# Problem 4

SELECT services.description FROM customers_services
RIGHT JOIN services
        ON services.id = customers_services.services_id
WHERE customers_services.id IS NULL;

# Problem 5

SELECT customers.name AS name, string_agg(services.description, ', ') AS services
FROM customers
  LEFT JOIN customers_services
         ON customers.id = customers_services.customers_id
  LEFT JOIN services
         ON customers_services.services_id = services.id
GROUP BY customers.id;

# Problem 6

- Write a query that displays the description for every service that is
    subscribed to by at least 3 customers.
    Include the customer count for each description in the report.

SELECT services.description, COUNT(customers_services.services_id)
FROM customers_services
RIGHT JOIN services
        ON services.id = customers_services.services_id
GROUP BY services.description
HAVING COUNT(customers_services.services_id) >= 3
ORDER BY services.description;

# Problem 7

- write a query to compute the total gross income we expect to receive

SELECT SUM(price) AS gross
  FROM services
  INNER JOIN customers_services
          ON customers_services.services_id = services.id;

# Problem 8

INSERT INTO customers (name, payment_token) VALUES
  ('John Doe', 'EYODHLCN');

INSERT INTO customers_services (customers_id, services_id) VALUES
  (7, 1),
  (7, 2),
  (7, 3);

# Problem 9

- he asks for two numbers: the amount of expected income from "big ticket" services (those services that cost more than $100)
- maximum income the company could achieve if it managed to convince all of its customers to select all of the companys big ticket items

Solution should be two separate SQL queries:
  (1) one that reports the current expected income level
  (2) that reports the hypothetical maximum.

(1) current big ticket services

SELECT SUM(price)
  FROM services
  INNER JOIN customers_services
          ON customers_services.services_id = services.id
       WHERE price >= 100.00;

(2)

SELECT SUM(price) * (SELECT COUNT(customers) FROM customers) AS sum
  FROM services
 WHERE price >=100.00;

# Problem 10

DELETE FROM customers WHERE name = 'Chen Ke-Hua';
DELETE FROM customers_services WHERE services_id = 7;
DELETE FROM services WHERE description = 'Bulk Email';
