#!/bin/bash

mylw()
{
 echo -e " \n welcome to mylw () function"
 echo " manual interpution...."
 exit 1

}
trap mylw  2 9

while ping -c 1 8.8.8.8 > /dev/null
do
        sleep 1
        echo -n "."

done
echo " not connected to internet ....."
exit 0
