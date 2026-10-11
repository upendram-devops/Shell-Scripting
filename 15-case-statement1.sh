
#!/bin/bash

# Example of a basic case statement

fruit="apple"

case "$fruit" in
    apple)
        echo "It's a fruit: apple"
        ;;

    banana)
        echo "It's a fruit: banana"
        ;;

    orange | mango)
        echo "It's a citrus fruit"
        ;;

    *)
        echo "Unknown fruit."
        ;;
esac

