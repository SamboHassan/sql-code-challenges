CREATE SCHEMA inventory;
CREATE SCHEMA sales;

-- Create a table for the Two Trees category data
CREATE TABLE inventory.categories (
    category_id          INT NOT NULL PRIMARY KEY,
    category_description VARCHAR(50),
    product_line         VARCHAR(25)
);


