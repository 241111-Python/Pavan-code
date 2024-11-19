# Analysis of the Coin Flip Game

# Overview of the Project

This project involves flipping a coin, storing the outcome ("Heads" or "Tails") in a data file, and then analyzing the results. The analysis is then recorded in a statistics file that indicates how many head and tails have been turned upside down.


# The files for this project are as follows:

- A program that uses a script to flip a coin program.sh
- A script to examine the results of a coin analyzer.sh
- A library file containing the coin flip library simulation library.sh

# Overview of Files

# program.sh
The coin flip game is run by this file. As a result, it will produce a random result every time it runs, either heads or tails, and update the data.txt file for subsequent processing.

# data.txt
Every time the program.sh file executes, a fresh coin flip result is appended to this file, which contains the results of every coin flip.

# library.sh
The function coin_flip in this file flips a coin to produce a random integer, detects if it's a head or tail, and then returns the outcome.

# analyzer.sh
The data in data.txt is read by this file, which then counts the number of heads and tails that have been recorded and outputs the results to the statistics.txt file.

# statistics.txt
This file stores the statisitcs of the coin flips and it also includes the total number of Head and tails generated after running the analyzer.sh file.



# How to Manage the Project

Step 1:

# Clone the repository: 
- Use the following command to clone the repository if you haven't already:

git clone <repository-url>


Step 2:

# Launch the Coin Flip Program: 
- Launch the `program.sh` script to replicate a coin flip and save the outcome:
by using command:

bash Program.sh

The script will append the result ("Heads" or "Tails") to `data.txt` each time it is executed.

Step 3:

# Examine the Coin Flip Information: 

- Run the `analyzer.sh` script to examine the outcomes and produce the statistics:
By using command:

bash Analyzer.sh

This will append the results to `statistics.txt` and count the number of "Heads" and "Tails" in `data.txt`.


Step 4:

# Cron Job: 
- To automate the 'analyzer.sh' script's running at predetermined intervals, you can set up a cron job. Here's how to configure it:

Use the command crontab -e to launch your crontab editor, then add the necessary command as per requirement example: * * * * * /user/folder/filename("relative path") then save and exit. 

The script will now execute automatically at the scheduled interval.