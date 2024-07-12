#!/bin/bash

x=1
while [ $x -le 5 ]
do
        if [ $x -eq 3 ]
        then
                break
        fi

        echo " $x hello deepak"
        x=$(( $x + 1 ))
done
