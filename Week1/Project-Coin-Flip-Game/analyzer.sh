#!/bin/bash

#here I'm analying the results of coin flip stores in data.txt file 
#by counting how many times heads and tails appear and stores the results in statistics.txt      

#initializing variables to store the count of Heads and Tails results

heads_total=0
tails_total=0

#using while loop to read each line of data.txt file so that it can read and store whether its heads or tails, #using Internal field separator is set to an empty value so that whitespace is not removed from each line
#read -r results reads a single line from data.txt file and stores it in result
#-r option prevents backslashes from being treated as escape characters

while IFS= read -r result; do                  
    if [[ "$result" == "Heads" ]]; then
        ((heads_total++))
    elif [[ "$result" == "Tails" ]]; then
        ((tails_total++))
    fi
done < /Users/pavanchary/Desktop/Revature/Github_repo/Pavan-code/week1/Project-Coin-Flip-Game/data.txt

#after processing all lines in the data.txt the script outputs the results to statistics.txt
#appending the following lines to track counts of heads and tails

echo "====== Coin Flip Statistics ======" >> /Users/pavanchary/Desktop/Revature/Github_repo/Pavan-code/week1/Project-Coin-Flip-Game/statistics.txt     #added a header for clarity
echo "Heads: $heads_total" >> /Users/pavanchary/Desktop/Revature/Github_repo/Pavan-code/week1/Project-Coin-Flip-Game/statistics.txt                    #count of heads
echo "Tails: $tails_total" >> /Users/pavanchary/Desktop/Revature/Github_repo/Pavan-code/week1/Project-Coin-Flip-Game/statistics.txt                    #count of tails
echo "================================" >> /Users/pavanchary/Desktop/Revature/Github_repo/Pavan-code/week1/Project-Coin-Flip-Game/statistics.txt       #added footer to mark the end of statistics