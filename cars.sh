#!/bin/bash
# cars.sh
# Nate Smith
# CPSC 298

USER_INPUT=""

while [[ "$USER_INPUT" != "3" ]];do
    echo "type the number 1 to enter a new car"
    echo "type the number 2 to display the list of cars"
    echo "type the number 3 to quit and exit the program"

    read -r USER_INPUT

    case $USER_INPUT in
        "1")
            echo "What is the Year: "
            read -r YEAR

            echo "What is the Make: "
            read -r MAKE

            echo "What is the Model: "
            read -r MODEL

        
            CAR="\n$YEAR:$MAKE:$MODEL"

            echo -e "$CAR" >> my-old-cars
            
            ;;
        "2")
            cat my-old-cars
            ;;
        "3")
            echo "GoodBye!"
            ;;
        "*")
            echo "That is not an option"
            echo "Remeber..."
            ;;
    esac
done


