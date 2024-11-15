#!/bin/bash               #So, before writing the script, here we need to specific which program to use to execute the script. #This is shebang-Bash (others: sh(Bourne Shell), Zsh (Z shell), Python and more)

#This is the Coin Flip Game Script
#It simulates a coin flip and records the result in a data file

source ./library.sh        #source command used to bring the content available in other files to this file #importing the function available in library file

#Calling_function
result=$(coin_flip)             #result a variable hold a value(either heads or tails)

#The result is appended to the file to track each flip

echo $result >> ./data.txt      #using echo to print the value in data.txt file #$ helps in accessing values that the variable holds,  >> is used to append, ./ represents current directory
exit 0                          #terminates the execution