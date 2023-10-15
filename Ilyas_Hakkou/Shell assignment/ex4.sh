#!/bin/bash

while true; do
  echo "Choose an option:"
  echo "1. List all files in the current directory."
  echo "2. List all running processes."
  echo "3. Check available disk space."
  echo "4. Exit the program."

  read -p "Enter your choice : " choice

  case $choice in
    1) ls ;;
    2) ps aux ;;
    3) df -h ;;
    4) exit ;;
    *) echo "Invalid choice." ;;
  esac
done

