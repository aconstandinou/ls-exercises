# Problem 1
1. create db 'extrasolar'
createdb extrasolar

2. create two tables: starts and planets

CREATE TABLE stars(
  id serial,
  name varchar(25) UNIQUE NOT NULL,
  distance integer NOT NULL CHECK (distance > 0),
  spectral_type char(1),
  companions integer NOT NULL CHECK (companions >= 0),
  PRIMARY KEY (id)
);

CREATE TABLE planets(
  id serial,
  designation char(1),
  mass integer,
  PRIMARY KEY (id)
);

# Problem 2
- Add star_id column to PLANETS
- Make sure the row is defined in such a way that it is required and must have a
    value that is present as an id in the stars table.

ALTER TABLE planets ADD COLUMN star_id integer NOT NULL;
ALTER TABLE planets ADD FOREIGN KEY (star_id) REFERENCES stars(id);

"note: adding a Foreign Key reference automatically accomplishes our second goal
       which is to ensure that the value is present in stars table."

# Problem 3
ALTER TABLE stars ALTER COLUMN name TYPE varchar(50);

#notes
There are at least 3 data types we can use to modify the name column:
- char(50): always having values with 50-character strings. If you assign a short
            name to such a column, PostgreSQL will expand it to 50 characters by
            appending an appropriate number of spaces.
- varchar(50): varchar isnt a fixed size. You can store anything from an empty string to a
               string with the maximum number of characters for the field. Unlike the
               char type, PostgreSQL will not add spaces to pad a varchar value.
- text : allows a string of any length.

# Problem 3 - Further Exploration
What happens if we revert back to 25 characters, and insert a name longer than 25 chars?
Answer: no error occurs, rather the name cuts off at 25 chars in length.


# Problem 4

modify distance column in the stars table so that it allows
  fractional light years to any degree of precision required.

ALTER TABLE stars ALTER COLUMN distance TYPE numeric;

several different data types we can use to store a number with a fractional component:
 - numeric (also known as decimal)
 - real
 - double precision

# Problem 4 - Further Exploration
What happens if we had data in our stars table, and changed type on distance?
No error.

# Problem 5

The spectral_type column in stars table is currently defined as a one-character string
It needs to only hold: 'O', 'B', 'A', 'F', 'G', 'K', and 'M'.
Add a constraint to the table stars that will enforce the requirement that a row must
  hold one of the 7 listed values above.
  Also, make sure that a value is required for this column.

ALTER TABLE stars ALTER COLUMN spectral_type SET NOT NULL;
ALTER TABLE stars ADD CONSTRAINT spectral_type_check CHECK (
  spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')
);

# Problem 6











.
