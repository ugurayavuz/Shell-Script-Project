#!/bin/bash
wildCard=$1 #For the first case, if user inputs ./myprog5.sh "*.txt", then takes $1 as a *.txt so that it can search for only txt files for example.
mkdir ~/copied #creates copied directory to copy files.
cp $wildCard  ./copied/ #copies wildcard input type files to the copied directory.
declare -a folderArray #creates folderArray to hold all folders
folderArray=($(find -type d))
if [[ $1 == "-R" ]]	#For the second case, if user inputs ./myprog5.sh -R "*.txt", then it reads $1 as a "-R" so that it can understand it have to copy recursively.
then
  wildCard2=$2 #just like above, it takes $2 for given type.
  ls $DIR/*/ >/dev/null 2>$1 ; #checks whether there is a subdirectory or not.
  for ((i=0; i<${#folderArray[*]} ; i++ )) #scans all.
  do
  cd "/home/taylan/${folderArray[i]}" #if there is folder among files enters it to do recursive.
	  if [[ $? == 0 ]] #If there is subdirectory->
	  then
	  mkdir /home/taylan/${folderArray[i]}/copied #create copied folder
	  cp $wildCard2 /home/taylan/${folderArray[i]}/copied/ #and copy files inside of it.
	  else #if not
	  echo no subdirectory #then dont.
  	  fi
  done
fi
