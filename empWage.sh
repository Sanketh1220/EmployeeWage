#! /bin/bash

# Constant
IS_PRESENT=1
EMP_RATE_PER_HR=20

# Variable
empCheck=$(( RANDOM % 2 ))


if [ $IS_PRESENT -eq $empCheck ]
then
	empHrs=8
	salary=$(( $empHrs * $EMP_RATE_PER_HR ))
	
else
	salary=0

fi
