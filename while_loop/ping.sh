#!/bin/bash

while ping -c 1 8.8.8.8 > /dev/null
do
        sleep 5
        echo "i am connected...."
done
