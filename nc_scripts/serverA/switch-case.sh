#!/bin/bash
tput setaf 2
echo -e " \t\t\t\t Welcome to my Application, How can I help you !!"
tput setaf 7

#echo "what u want to perform"
echo "Press 1: To start chat ..."
echo "Press 2: manage ur script from outside"
echo "Press 3: get other computer output : support team "

echo ""
read -p  "Enter ur choice: " myc

case $myc in
        "1")
                read -p "Enter port number to start chat: " myport
                echo "client can chat at nc $(hostname -i) $myport"
                echo "Chat program started..."
                nc -l $myport
                ;;
        "2")
                tput setaf 3
                echo -e "\t\t\t\tWelcome to Script Management Server"
                tput setaf 7
                read -p  " Enter port number to access script: " myport1
                echo "Which script do you want to execute:-"
                tput setaf 2
                echo -e " \t1. test: To manage test env users"
                echo -e "\t 2. myuser: To check user that have bash shell"
                echo -e "\t 3. mydb: To manage db"
                tput setaf 3
                read -p  " Enter script name: " myscript
                tput setaf 7
                echo "Client can execute script by nc $(hostname -i) $myport1"
                nc -l $myport1 -e  $myscript.sh
                ;;
        "3")
                read -p "Enter ur port number to start transferring info: " myport
                echo " now client can  transfer output eg:- date | nc $(hostname -i) $myport"
                echo "information is storing in support.txt file... "
                nc -l $myport > support.txt
                ;;
         *)
                echo "Option not supported..."
esac
