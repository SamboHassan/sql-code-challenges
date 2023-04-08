-- Creating and using foreign key fields
SELECT * FROM customers;

CREATE TABLE customers(
    customer_id     char (5) NOT NULL PRIMARY KEY,
    company         character varying (50),
    address         varchar (50),
    city            varchar (20),
    state           varchar (20),
    zip             char (5)
);

INSERT INTO customers 
    VALUES 
        ('GY846', 'Samsung', '67 Jurem Street', 'Washington', 'Boston', '344ER'),
        ('VR175', 'Toshiba', 'No. Jamil Street', 'San Jose', 'Bua', '134R5'),
        ('JK125', 'Centrizone', 'No. F15 Ali Marami Estate', 'Bauchi', 'Bua', '12345'),
        ('FV419', 'Samsung', '67 Jurem Street', 'Washington', 'Boston', '344ER'),
        ('FV418', 'Toshiba', 'No. Jamil Street', 'San Jose', 'Bua', '134R5'),
        ('WR421', 'Centrizone', 'No. F15 Ali Marami Estate', 'Bauchi', 'Bua', '12345')
;


SELECT * FROM customers;

drop TABLE customers;

-- Create a table that relates to the 'customers' table
CREATE TABLE orders (
    order_id     INT IDENTITY(100,1) NOT NULL PRIMARY KEY, --PostgreSQL: use GENERATED ALWAYS AS IDENTITY (START WITH 100 INCREMENT BY 1)
    order_date   DATE,
    total_price  DECIMAL(10,2),
    customer_id  CHAR(5)
);

INSERT INTO orders (order_date, total_price, customer_id) VALUES
    ('2020-10-15', 195.99, 'FV418'),
    ('2020-10-19', 128.76, 'FV418'),
    ('2020-10-20', 65.92, 'WR421'),
    ('2020-10-20', 1518.33, 'FV418')
;

-- View the result in both tables
SELECT * FROM customers;
SELECT * FROM orders;

-- Join data rows by matching primary and foreign key fields
SELECT  orders.order_id,
        orders.order_date,
        customers.company,
        customers.customer_id,
        customers.address,
        customers.city,
        customers.state,
        orders.total_price
FROM customers JOIN orders ON customers.customer_id = orders.customer_id;



--create

-- ALTER TABLE QuarterlyBonus
-- ADD CONSTRAINT fk_employees_employeeid FOREIGN KEY (EmployeeID)
-- REFERENCES Employees (EmployeeID);

CREATE TABLE orders (
    order_id     INT GENERATED ALWAYS AS IDENTITY(START with 100 INCREMENT BY 1) NOT NULL PRIMARY KEY, 
    order_date   DATE,
    total_price  DECIMAL(10,2),
    customer_id  CHAR(5)
);

DROP TABLE orders;