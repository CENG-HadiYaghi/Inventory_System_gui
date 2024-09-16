                                                      Inventory Management System
--Project Overview--
This is a Java-based Inventory Management System with user authentication. It allows users to sign up, log in, view, and manage inventory items by category.

Key Features:
User Sign-Up: Collects first and last name, gender, date of birth, phone number, email address, and password.
User Login: Users can log in using their full name and password.
Main Menu: After logging in, users are presented with two options:
View Inventory: Users can view inventory items by category.
Manage Inventory: Users can manage (add, edit, delete) items in the inventory.
Setup Instructions
1. Clone the Repository:
To get started with this project, clone the repository to your local machine:

git clone https://github.com/your-username/inventory-management-system.git

2. Set Up the Database:
The project uses a MySQL database for storing user and inventory data. Follow the steps below to set up the database:

Create a new database in MySQL called inventory_db.
Import the database schema:
Open phpMyAdmin or your preferred MySQL management tool.
Create a new database named inventory system .
Import the database/inventory_db.sql file found in the /SQL folder.
Download XAMPP to run the databse connection 
This will create the necessary tables for users and inventory management.

Functionality Overview
Sign-Up Form:
Users provide their personal details including first and last name, gender, date of birth, phone number, email address, and password.
The system stores the full name (concatenation of first and last name) and password in the database.
Login Form:
Users log in using their full name and password.
After successful login, the user is redirected to the main menu.
Main Menu:
View Inventory: Opens a new window with categories. Once a category is selected, a table displaying the inventory for that category is presented.
Manage Inventory: Opens a menu where users can manage each category (add, edit, or delete inventory items).
