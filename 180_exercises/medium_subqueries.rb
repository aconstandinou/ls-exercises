# PROBLEM 1
createdb auction

CREATE TABLE bidders (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  initial_price NUMERIC(6, 2) NOT NULL CHECK(initial_price BETWEEN 0.01 AND 1000.00),
  sales_price NUMERIC(6, 2) CHECK(sales_price BETWEEN 0.01 AND 1000.00)
);

CREATE TABLE bids (
  id SERIAL PRIMARY KEY,
  bidder_id INTEGER NOT NULL REFERENCES bidders(id) ON DELETE CASCADE,
  item_id INTEGER NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  amount NUMERIC(6, 2) NOT NULL CHECK(amount BETWEEN 0.01 AND 1000.00)
);

CREATE INDEX ON bids (bidder_id, item_id);

Finally, use the \copy meta-command to import the below files into your auction database

\copy bidders FROM bidders.csv WITH DELIMITER ',' CSV HEADER;
\copy items FROM items.csv WITH DELIMITER ',' CSV HEADER;
\copy bids FROM bids.csv WITH DELIMITER ',' CSV HEADER;

# PROBLEM 2
SELECT name AS "Bid on Items" FROM items WHERE id IN
 (SELECT item_id FROM bids);

# PROBLEM 3
SELECT name AS "Not Bid On" FROM items WHERE id NOT IN
 (SELECT item_id FROM bids);

# PROBLEM 4
# If we want to include all bidder names, then we need a subquery that will
#   only return rows for anyone who has ever placed a bid. This is why we use
#   SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id.

SELECT name FROM bidders
 WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

# with join

SELECT DISTINCT(name) FROM bidders
  LEFT JOIN bids ON bidders.id = bids.bidder_id;

# PROBLEM 5

SELECT name AS "Highest Bid Less Than 100 Dollars" FROM items
WHERE 100.00 > ANY
  (SELECT amount FROM bids WHERE item_id = items.id);

SELECT name AS "Highest Bid Less Than 100 Dollars" FROM items
WHERE 100.00 > ALL
  (SELECT amount FROM bids WHERE item_id = items.id);

# PROBLEM 6
# this works but isnt the answer they are looking for
SELECT COUNT(item_id) AS max FROM bids
 GROUP BY item_id
 ORDER BY max DESC LIMIT 1;
# my version
SELECT max FROM
 (SELECT COUNT(item_id) AS count FROM bids
  GROUP BY item_id
  ORDER BY count DESC LIMIT 1) AS max;
# LS version
#   We can use a subquery within the FROM clause to generate a table, then
#   use the outer SELECT to query data from that table.
SELECT MAX(bid_counts.count) FROM
  (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;

# PROBLEM 7

# PROBLEM 8

# PROBLEM 9

# PROBLEM 10
