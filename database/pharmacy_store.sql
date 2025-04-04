-- Create the database
CREATE DATABASE IF NOT EXISTS pharmacy_store;
USE pharmacy_store;

-- Create users table (combined for both users and admins)
CREATE TABLE users (
    userid VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL,
    emailid VARCHAR(100) NOT NULL,
    age INT,
    contact VARCHAR(15),
    state VARCHAR(50),
    city VARCHAR(50),
    pincode VARCHAR(10),
    role VARCHAR(10) DEFAULT 'USER' -- 'ADMIN' or 'USER'
);

-- Create category table
CREATE TABLE category (
    categoryId INT PRIMARY KEY AUTO_INCREMENT,
    categoryName VARCHAR(100) NOT NULL
);

-- Create product table
CREATE TABLE product (
    productid INT PRIMARY KEY AUTO_INCREMENT,
    productname VARCHAR(100) NOT NULL,
    categoryid INT,
    price INT NOT NULL,
    quantity INT NOT NULL,
    description TEXT,
    FOREIGN KEY (categoryid) REFERENCES category(categoryId)
);

-- Create orders table
CREATE TABLE orders (
    orderid INT PRIMARY KEY AUTO_INCREMENT,
    customerid VARCHAR(50),
    productid INT,
    orderedunits INT NOT NULL,
    address TEXT,
    ordereddate DATE,
    requesteddate DATE,
    accepted BOOLEAN DEFAULT FALSE,
    cancelled BOOLEAN DEFAULT FALSE,
    confirmed BOOLEAN DEFAULT FALSE,
    billamount INT,
    FOREIGN KEY (customerid) REFERENCES users(userid),
    FOREIGN KEY (productid) REFERENCES product(productid)
);

-- Insert default admin user
INSERT INTO users (userid, password, emailid, role) 
VALUES ('admin', 'admin123', 'admin@pharmacy.com', 'ADMIN');

-- Insert sample categories
INSERT INTO category (categoryName) VALUES 
('Pain Relief'),
('Antibiotics'),
('Vitamins & Supplements'),
('First Aid'),
('Skin Care');

-- Insert sample products
INSERT INTO product (productname, categoryid, price, quantity, description) VALUES 
('Paracetamol 500mg', 1, 5, 100, 'Pain relief and fever reduction'),
('Amoxicillin 250mg', 2, 15, 50, 'Broad-spectrum antibiotic'),
('Vitamin C 1000mg', 3, 10, 75, 'Immunity booster'),
('Bandage Roll', 4, 8, 200, 'Sterile bandage for wounds'),
('Aloe Vera Gel', 5, 12, 30, 'Natural skin healing gel'); 