#! /bin/bash

# Constant
IS_PRESENT_PART_TIME=2
IS_PRESENT_FULL_TIME=1
EMP_RATE_PER_HR=20

# Variable
empCheck=$(( RANDOM % 3 ))


if [ $IS_PRESENT_FULL_TIME -eq $empCheck ]
then
        empHrs=8
        salary=$(( $empHrs * $EMP_RATE_PER_HR ))
elif [ $IS_PRESENT_PART_TIME -eq $empCheck ]
then
	empHrs=4
	salary=$(( $empHrs * $EMP_RATE_PER_HR ))
else
        salary=0

fi
