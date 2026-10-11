
#!/bin/bash

day="monday"

case "$day" in
    monday | tuesday | wednesday | thursday | friday)
        echo "$day is a weekday"
        ;;

    saturday | sunday)
        echo "$day is a weekend day"
        ;;

    *)
        echo "Invalid day"
        ;;
esac

