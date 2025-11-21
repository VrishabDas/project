#!/bin/bash

# File to store user data
USER_FILE="users.txt"

# Ensure the user file exists
touch "$USER_FILE"

# Project Title and Description
echo "==========================================="
echo "     Unix Project 22: User Management Tool"
echo "==========================================="
echo ""
echo "This project simulates basic user management operations:"
echo "  - Add a user (stores name in users.txt)"
echo "  - Delete a user"
echo "  - List all users"
echo ""
echo "User data is stored in users.txt to mimic account handling."
echo ""

# Menu Loop
while true; do
    echo "------------------"
    echo "     Main Menu"
    echo "------------------"
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Exit"
    echo "------------------"
    echo -n "Enter your choice [1-4]: "
    read choice

    case $choice in
        1)
            echo -n "Enter username to add: "
            read username
            if grep -Fxq "$username" "$USER_FILE"; then
                echo "User '$username' already exists."
            else
                echo "$username" >> "$USER_FILE"
                echo "User '$username' added."
            fi
            ;;
        2)
            echo -n "Enter username to delete: "
            read deluser
            if grep -Fxq "$deluser" "$USER_FILE"; then
                grep -Fxv "$deluser" "$USER_FILE" > temp.txt && mv temp.txt "$USER_FILE"
                echo "User '$deluser' deleted."
            else
                echo "User '$deluser' not found."
            fi
            ;;
        3)
            echo "Current users:"
            if [ -s "$USER_FILE" ]; then
                nl -w2 -s'. ' "$USER_FILE"
            else
                echo "[No users found]"
            fi
            ;;
        4)
            echo "Exiting... Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please enter 1-4."
            ;;
    esac

    echo ""  # Blank line for spacing
done