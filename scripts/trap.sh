#!/bin/bash

echo "welcome to script management !!"

mylw()
{
        echo -e  " \n okk byyy we see you later ...."
        rm -f /tmp/pass.txt
        exit 1
}
# execute mylw() script get signal 2 & 9 . We can add more signals 
trap mylw 2 9

# trap mylw 1 2 3 6 9 

echo " Please provide details of IP and password"

read -p "enter ur password: " myp
echo $myp > /tmp/pass.txt
echo " manage script"
read -p "Enter your IP: " ip
echo $ip
cat /tmp/pass.txt
rm -f /tmp/pass.txt

exit 0
