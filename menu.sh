#!/bin/bash

pause(){
  read -p "Please press Enter.." quitKey
}

myprog1(){
	/bin/bash /home/taylan/myprog1.sh
	pause
}

myprog2(){
	/bin/bash /home/taylan/myprog2.sh
        pause
}

myprog3(){
	/bin/bash /home/taylan/myprog3.sh
        pause
}

myprog4(){
	/bin/bash /home/taylan/myprog4.sh
        pause
}

myprog5(){
	read -p "Enter a string: " 
	/bin/bash /home/taylan/myprog5.sh
        pause
}


displayMenu() {
	echo "---------------------"	
	echo " W E L C O M E "
	echo "---------------------"
	echo "Press 1 for myprog1.sh"
	echo "Press 2 for myprog2.sh"
	echo "Press 3 for myprog3.sh"
	echo "Press 4 for myprog4.sh"
	echo "Press 5 for myprog5.sh"
	echo "Press 6 for exit"
}

askingToUser(){
	local choiceKey
	read -p "Enter choice [ 1 - 6] " choiceKey
	case $choiceKey in
		1) myprog1 ;;
		2) myprog2 ;;
		3) myprog3 ;;
		4) myprog4 ;;
		5) myprog5 ;;
		6) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
trap '' SIGINT SIGQUIT SIGTSTP
 
while true
do
displayMenu
askingToUser
done
