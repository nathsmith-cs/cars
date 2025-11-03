# README for Numbers Script

## Author Information
- **Name:** Nate Smith
- **Course:** CPSC 298  
- **Assignment:** Cars Script  
- **Date:** 3 November 2025  

## Program Description
This scripts is a car tracker interface that allows a user to add and store cars in a text file using append methods. It uses a case statement to track the logic of the user picking different options. They can add cars based on their YEAR, MAKE, and MODEL with putting them in the file as YEAR:MAKE:MODEL.  

## Example Output
The user gets prompted with a selection and chooses first 1 then 2 then 3. 
```
type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program
1
What is the Year: 
1999
What is the Make: 
Jeep
What is the Model: 
Cherokee
type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program
2
1948:Ford:sedan

1952:Chevrolet:coupe

1960:Ford:Mustang

1972:Chevrolet:Corvette

1977:Plymouth:Roadrunner

2006:Kia:Sedona

1999:Jeep:Cherokee
type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program
3
GoodBye!
```


## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `cars-input`):
```bash
./cars.sh < cars-input
```

## How the Script Works
1. The script begins with a **shebang** (`#!/bin/bash`) and identifying comments.  
2. It **prompts** the user to select an option from a menu and caputes the input using `read`.  
3. A **while loop** encapulates the program allowing the user to interact multipe times.  
4. A **case statement** determines which option is entered allowing for easy readability.  
5. If the reader selects `1` they are prompted further for the `$YEAR` `$MAKE` and `$MODEL` which gets appened to the file `cars-input`  

## Core Logic Example
```bash
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
```

## Testing Results
When tested with the input file `cars-input` containing:
```
1
1984
Toyota
Supra
2
3
```
The script outputs:
```
type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program
What is the Year: 
What is the Make: 
What is the Model: 
type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program
1948:Ford:sedan

1952:Chevrolet:coupe

1960:Ford:Mustang

1972:Chevrolet:Corvette

1977:Plymouth:Roadrunner


1984:Toyota:Supra
type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program
GoodBye!
```
 
  

## Example Validations
| Input | Output Behavior |
|--------|------------------|
| 1 | What is the Year: `2006` What is the Make: `Kia` What is the model: `Sedona` |
| 3 | Goodbye! |


## Resources
None

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
