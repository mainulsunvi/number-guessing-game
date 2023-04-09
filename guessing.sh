#!/bin/bash
#Purpose: A Bash Game to Guess the Correct Number
#Version: 1.0
#Created Date: Sun, Apr  9, 2023 10:34:58 PM
#Modified Date: 9 - 04 - 2023
#Author: Mainul Sunvi

# START #

system_Nmbr=$((1000 + RANDOM % 9999))
counter=1

while true; 
do
	echo -e "Enter your Guessed Number: \c"
	read -r user_number

	if [ $system_Nmbr -eq $user_number ]; 
	then
		echo "Your Guess is Correct"
		break
	else

		if [ $user_number -ge $system_Nmbr ]; 
		then
			echo "Please Select Some Lesser Value then $user_number"
		else
			echo "Please Select Some Higher Value then $user_number"
		fi
		
	fi

	counter=$((counter + 1))
	echo "Your Trial is: ${counter}"
done

# END #
