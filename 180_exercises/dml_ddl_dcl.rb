# 1.
DML: Data Manipulation Language
1. SELECT
2. INSERT
3. UPDATE
4. DELETE

DDL: Data Defining Language
1. DROP
2. CREATE
3. ALTER

# 2. Does the following statement use the Data Definition Language (DDL) or the Data Manipulation Language (DML) component of SQL?
SELECT column_name FROM my_table;

(A): this uses DML (Data Manipulation Language)

# 3. Does the following statement use the DDL or DML component of SQL?
CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);

(A): This uses DDL - Data Defining Language as we are defining column values, table name and constraints.

# 4. Does the following statement use the DDL or DML component of SQL?
ALTER TABLE things
DROP CONSTRAINT things_item_key;

(A): DDL since we are altering the schema of the table. In this case, removing a constraint.

# 5. Does the following statement use the DDL or DML component of SQL?
INSERT INTO things VALUES (3, 'Scissors', 'Metal');

(A): Since we are adding new data to the table, this falls under DML.
     INSERT is part of Data Manipulation.

# 6. Does the following statement use the DDL or DML component of SQL?
UPDATE things
SET material = 'plastic'
WHERE item = 'Cup';

(A): UPDATE is manipulating data on a specific row. This is DML.

# 7. Does the following statement use the DDL, DML, or DCL component of SQL?
\d things

(A): DDL since it allows us to examine the attributes (schema) of a particular table.

LS: This is a trick question. \d is a psql console command, not part of SQL.
    As such, it is not part of any SQL sublanguage. However, it does act something
      like a DDL statement -- it displays the schema of the named table.


# 8. Does the following statement use the DDL or DML component of SQL?
DELETE FROM things WHERE item = 'Cup';

(A): DML since we are manipulating data. In this case we are deleting rows that match
     a 'WHERE' condition.

# 9. Does the following statement use the DDL or DML component of SQL?
DROP DATABASE xyzzy;

(A): Technically DDL and DML. 'DROP DB' removes all data, therefore DML.
     'DROP DB' also deletes everything aboit the structure of the DB and tables.
     All variants of DROP are generally DDL.

# 10. Does the following statement use the DDL or DML component of SQL?
CREATE SEQUENCE part_number_sequence;

(A): DDL. This modifies the characteristics and attributes of a database by adding
          a sequence object to the database structure.
          It does not actually manipulate any data, but instead manipulates the data definitions.
