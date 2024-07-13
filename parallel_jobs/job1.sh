#!/bin/bash

echo "welocme job1"
x=1

while [ $x -le 10 ]
do
        echo "I am job1..$x"
        sleep 1
        x=$(( $x + 1 ))
done
