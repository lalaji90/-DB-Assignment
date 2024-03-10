-- Create Product_Category table
CREATE TABLE Product_Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);
-- Create Product table with a foreign key reference to Product_Category
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id)
);
