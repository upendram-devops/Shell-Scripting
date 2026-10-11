
#!/bin/bash

echo "MENU:"
echo "========================"
echo "1. Display date"
echo "2. Display calendar"
echo "3. Display current directory"
echo "4. Exit"

read -p "Enter your choice: " choice

case "$choice" in
    1)
        date
        ;;

    2)
        cal
        ;;

    3)
        pwd
        ;;

    4)
        echo "Exiting program."
        exit 0
        ;;

    *)
        echo "Invalid choice: $choice. Please enter a number between 1 and 4."
        ;;
esac
