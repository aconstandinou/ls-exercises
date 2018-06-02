# Problem 1

createdb workshop
psql -d workshop

create table 'devices'

CREATE TABLE devices(
  id serial PRIMARY KEY,
  name text NOT NULL,
  create_at timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE parts(
  id serial PRIMARY KEY,
  part_number integer UNIQUE NOT NULL,
  device_id integer,
  FOREIGN KEY (device_id) REFERENCES devices(id)
);

# Problem 2

- add two different devices 'Accelerometer' and 'Gyroscope'
'Accelerometer' should have 3 parts
'Gyroscope' should have 5 parts.
The part numbers may be any number between 1 and 10000
There should also be 3 parts that dont belong to any device yet.

INSERT INTO devices (name) VALUES
('Accelerometer'),
('Gyroscope');

INSERT INTO parts (part_number, device_id) VALUES
(5000, 1),
(3500, 1),
(10, 1),
(989, 2),
(1989, 2),
(2999, 2),
(9478, 2),
(99, 2);

INSERT INTO parts (part_number) VALUES
(400),
(401),
(402);

# Problem 3

- inner join devices.name and parts.part_number

SELECT devices.name, parts.part_number FROM devices
INNER JOIN parts ON devices.id = parts.device_id;

# Problem 4

- select all parts that have a part_number that starts with 3
'What we can do is temporarily convert the part_number to type text and
  then use the LIKE operator to check if a part_number starts with 3'

SELECT * FROM parts WHERE CAST(part_number AS TEXT) LIKE '3%';

# Problem 5

- return table with devices.name & number of parts for that device.

SELECT devices.name AS name, count(name) FROM devices
INNER JOIN parts ON devices.id = parts.device_id
GROUP BY name
ORDER BY name ASC;

# Problem 6

SELECT devices.name AS name, count(name) FROM devices
INNER JOIN parts ON devices.id = parts.device_id
GROUP BY name
ORDER BY name ASC;

# Problem 7

two SQL queries
1) listing of parts that currently belong to a devices
2) listing of parts that have no device

SELECT part_number, device_id FROM parts
WHERE device_id IS NOT NULL;

SELECT part_number, device_id FROM parts
WHERE device_id IS NULL;

# Problem 8
-- use this new device insert
INSERT INTO devices (name) VALUES ('Magnetometer');
INSERT INTO parts (part_number, device_id) VALUES (42, 3);

- write SQL statement that will return name of oldest device from devices table.
SELECT * FROM devices
ORDER BY create_at ASC
LIMIT 1;

# Problem 9

last 2 parts for device 2 needs to belong to device 1.

UPDATE parts SET device_id = 1
WHERE part_number=37 OR part_number=39;

# Problem 10

- delete everything to do with Accelerometer

DELETE FROM parts WHERE device_id = 1;
DELETE FROM devices WHERE name = 'Accelerometer';

'note: due to foreign key constraint, we needed to first delete all parts linked
to device_id = 1. Then we could delete the 'Accelerometer' from our devices table.'
