#!/bin/bash -x

echo "Flip coin simulation problem" 

#INITIALIZE THE RANDOM VALUE
Head=0
Tail=0
read -p "how many times do you want to do flip a coin: " times

for (( i=1; i<=$times; i++))
do
	random=$(( RANDOM%2 ))

	#CHECK THE CONDITION AND DISPLAY HEAD OR TAIL
	if [ $random -eq 1 ]
	then
		Head=$(( $Head + 1))
	else
		Tail=$(( $Tail + 1 ))
	fi
done

echo "Head has won $Head times"
echo "Tail has won $Tail times"
