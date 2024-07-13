#!/bin/bash
echo "start all jobs"

/home/ec2-user/job1.sh &

/home/ec2-user/job2.sh  &

# wait is used to wait to execute below steps until all above steps done 
wait

echo "all jobs are done..."
