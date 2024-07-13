#!/bin/bash

echo "welcome"
name=deepak  # -n
phone=2222   # -p
age=15       # -a

# we added 4 options for name , city , phone , age and city & phone have to pass values 
while getopts "np:ac:"  ch
do
        case $ch in
                n)
                        echo $name ;;
                p)
                        echo $OPTARG ;;
                a)
                        echo $age ;;
                c)
                        echo $OPTARG ;;
                *)
                        echo "don't know" ;;

        esac
done
