#!/bin/bash
#file=$1
declare -a numArray #creating array for numbers 0 to 9 
mapfile -t numArray < file.txt #transfer numbers in file to the array
count=0
for ((i=0; i<=9 ; i++ )) 
do
    for ((j=0; j<${#numArray[*]}; j++ ))
    do
     if [ $i -eq  ${numArray[j]} ] #We check and see whether j. value of array is equal to the incrementing number or not. If it is equal, increment count by 1.
     then
     count=$((count+1)) 
     fi
    done
    
     if [ $count -eq 0 ] #For instance there is no "7" in the file print 7, dont put any stars and pass to the other line.
     then 
     echo -n "$i"
     echo
     fi
    
     if [ $count -gt 0 ] #Counts number appears how many times(x times let's say) and puts x stars next to the number.
     then
     echo -n "$i" 
         for ((k=0; k<count; k++ ))
         do
         echo -n "*"
         done
     echo
     count=0
     fi  
done 
