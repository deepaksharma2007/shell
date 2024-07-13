#!/bin/bash

echo "welocme job2"
x=1

while [ $x -le 10 ]
do
        echo "I am job2 ..$x"
        sleep 1
        x=$(( $x + 1 ))
done
