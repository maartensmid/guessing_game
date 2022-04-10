#! /usr/bin/env bash
# File: guessinggame.sh

num_files=3
echo "Good day! Welcome to guessinggame!"
echo "Please guess how many files are in the current directory:"

source check_num.sh

read guess

while [[ $guess != $num_files ]]
do
	check_num $guess
	if  [[ $guess -lt $num_files ]]
	then
		echo "Your guess is too low. Please enter your guess again:"
		read guess
	elif [[ $guess -gt $num_files ]]
	then
		echo "Your guess is too high. Please enter your guess again:"
		read guess
	fi
done

if [[ $guess -eq $num_files ]]
then
	echo "Congratulations! you guessed the right amount of files in the directory."
fi

