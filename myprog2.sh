#!/bin/bash
read -p "Enter a string: " string_array
while read -n 1 c; do a+=($c); done  <<< "$string_array" #reads and transfers to array.
STRING_LENGTH=${#string_array} #creates strings length
read -p "enter a number: " int_array 
while read -n 1 c; do b+=($c); done  <<< "$int_array"
NUMBER_LENGTH=${#int_array}
if [[ "$NUMBER_LENGTH" -ne 1 && "$NUMBER_LENGTH" -ne  "$STRING_LENGTH" ]] ; #If the number that we take as an input does not equal to 1 or string's length it gives us error.
 then
	echo "Error! Number length must be equal to 1 or length of string"
	exit 
fi
dual=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz #English alphabet

	if [[ ${#int_array} = 1 ]]; then #If number size 1
		rotat=${b[i]}
		newphrase=$(echo $string_array | tr "${dual:0:26}" "${dual:${rotat}:26}")
		echo ${newphrase}

	else #If number size equals to string's legth
		for (( i = 0; i < ${#int_array}; i++ )); do
		rotat=${b[i]}
		rotat2=${a[i]}
		newphrase=$(echo ${rotat2} | tr "${dual:0:26}" "${dual:${rotat}:26}")
		echo -n ${newphrase}
	done
	fi
echo ""
