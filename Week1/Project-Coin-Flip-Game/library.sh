#!/usr/bin/bash

#Function to simulate a coin flip (Heads or Tails)
#This function works as to generate a random number (0 or 1) and simlates a coin flip based on that number 
function coin_flip() {

    #RANDOM is built-in Bash variable that generates a random number
    #Considering 0 represents Heads, 1 represents Tails 

    flip=$((RANDOM % 2))         #Generating a random number (0 or 1) when a random number is done modulus by 2 it gives either 0 or 1

    #Using if-else statement to check the result of the coin flip
    if [ $flip -eq 0 ]; then     #here if flip as per generated ramdon number is 0 then heads else Tails
        echo "Heads"
    else
        echo "Tails"
    fi
}
