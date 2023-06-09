create database diningschema;
use diningschema;

CREATE TABLE Customer (
  cust_ID int NOT NULL AUTO_INCREMENT,
  name varchar(50),
  email varchar(50),
  meal_plan_id int,
  mobile int,
  PRIMARY KEY (cust_ID)
);

CREATE TABLE Dining (
  dining_ID int NOT NULL AUTO_INCREMENT,
  name varchar(50),
  location varchar(50),
  franchise varchar(50),
  working_hours varchar(50),
  PRIMARY KEY (dining_ID)
);

CREATE TABLE Inventory (
  item_ID int NOT NULL AUTO_INCREMENT,
  item_name varchar(50),
  quantity int,
  dining_id int,
  PRIMARY KEY (item_ID),
  FOREIGN KEY (dining_id) REFERENCES Dining(dining_ID)
);

CREATE TABLE GreenchoiceUsers (
  greenchoice_ID int NOT NULL AUTO_INCREMENT,
  cust_id int,
  PRIMARY KEY (greenchoice_ID)
);

CREATE TABLE Orders (
  order_ID int NOT NULL AUTO_INCREMENT,
  order_location varchar(50),
  order_total int,
  dining_id int,
  cust_id int,
  PRIMARY KEY (order_ID),
  FOREIGN KEY (cust_id) REFERENCES Customer(cust_ID),
  FOREIGN KEY (dining_id) REFERENCES dining(dining_ID)
);

CREATE TABLE DiningCustomer (
  cust_id int NOT NULL AUTO_INCREMENT,
  Dining_id int,
  PRIMARY KEY (cust_id, Dining_id),
  FOREIGN KEY (Dining_id) REFERENCES Dining(dining_ID),
  FOREIGN KEY (cust_id) REFERENCES Customer(cust_ID)
);

CREATE TABLE Employee (
  emp_ID int NOT NULL AUTO_INCREMENT,
  emp_name varchar(50),
  emp_address varchar(50),
  emp_email varchar(50),
  emp_mobile int,
  emp_password varchar(50),
  dining_id int,
  PRIMARY KEY (emp_ID),
  FOREIGN KEY (dining_id) REFERENCES Dining(dining_ID)
);

CREATE TABLE Expenses (
  expense_ID int NOT NULL AUTO_INCREMENT,
  exp_description varchar(50),
  exp_amount int,
  dining_id int,
  PRIMARY KEY (expense_ID),
  FOREIGN KEY (dining_id) REFERENCES Dining(dining_ID)
);

CREATE TABLE MealPlans (
  plan_ID int NOT NULL AUTO_INCREMENT,
  price_limit int,
  plan_description varchar(50),
  PRIMARY KEY (plan_ID)
);

CREATE TABLE Menu (
  menu_ID int NOT NULL AUTO_INCREMENT,
  item_name varchar(50),
  item_price int,
  gluten_free int,
  alergen_free int,
  vegan int,
  dining_id int,
  PRIMARY KEY (menu_ID),
  FOREIGN KEY (dining_id) REFERENCES Dining(dining_ID)
);

CREATE TABLE OrderItem (
  order_id int ,
  menu_id int,
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_ID),
  FOREIGN KEY (order_id) REFERENCES Orders(order_ID)
);

CREATE TABLE Reviews (
  review_ID int NOT NULL AUTO_INCREMENT,
  review_description varchar(50),
  order_id int,
  PRIMARY KEY (review_ID)
);

CREATE TABLE Payment (
  payment_ID int NOT NULL AUTO_INCREMENT,
  payment_type varchar(50),
  payment_amount int,
  order_id int,
  PRIMARY KEY (payment_ID)
);

CREATE TABLE Assets (
  asset_ID int NOT NULL AUTO_INCREMENT,
  description varchar(50),
  value int,
  dining_id int,
  PRIMARY KEY (asset_ID),
  FOREIGN KEY (dining_id) REFERENCES Dining(dining_ID)
);

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS; 
SET FOREIGN_KEY_CHECKS=0;   

## all of your schema and inserts

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

ALTER TABLE Payment
ADD FOREIGN KEY (order_id) REFERENCES Orders(order_ID);


ALTER TABLE Reviews
ADD FOREIGN KEY (order_id) REFERENCES Orders(order_ID);


ALTER TABLE customer
ADD FOREIGN KEY (meal_plan_id) REFERENCES mealplans(plan_ID);

ALTER TABLE GreenchoiceUsers
ADD FOREIGN KEY (cust_id) REFERENCES Customer(cust_ID);

ALTER TABLE Orders
ADD FOREIGN KEY (dining_id) REFERENCES dining(dining_ID);