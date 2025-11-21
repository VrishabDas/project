User Management Tool (Simulation)

A simple Unix shell script that simulates user account management operations such as adding, deleting, and listing users.
All user data is stored in a text file (users.txt) to mimic a basic account-handling system.

📁 Project Description

This project is part of Unix Project 22, where you implement a command-line tool that:

Adds new users

Deletes existing users

Lists all stored users

The script uses simple file operations and Unix commands (grep, nl, mv, etc.) to manage data.

📂 Files Included
user_management.sh   # Main shell script  
users.txt            # File that stores usernames  

🛠 How It Works
1. Add User

Prompts the user for a username

Checks if the name already exists

If not found, appends it to users.txt

2. Delete User

Checks if the username exists

Removes it from the file if found

Uses a temporary file for safe deletion

3. List Users

Displays all users with numbering

If no users exist, prints a message

4. Exit

Cleanly exits the program

🚀 How to Run the Script
Step 1: Make the script executable
chmod +x user_management.sh

Step 2: Run it
./user_management.sh

📸 Program Menu Example
------------------
     Main Menu
------------------
1. Add User
2. Delete User
3. List Users
4. Exit
------------------
Enter your choice [1-4]:

![SCREENSHOT] (assets/ss.png)

📘 Code Summary

The script performs:

File creation with touch

User search using grep -Fxq

Safe deletion using temporary file replacement

List formatting with nl -w2 -s'. '

This makes it a simple but effective simulation of real-world user management logic.

🧪 Sample Output
Enter username to add: Alice
User 'Alice' added.

Current users:
 1. Alice

Enter username to delete: Alice
User 'Alice' deleted.

🎯 Project Objective

To demonstrate basic Unix shell scripting skills including:

File handling

Condition checks

Looping

Menu-driven programs

String searches

Command-line interaction
