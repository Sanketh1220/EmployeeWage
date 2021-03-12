#! /bash/bin -x

echo "This employee wage Problem."

#! /bin/bash

# Constant
IS_PRESENT=1

# Variable
empCheck=$(( RANDOM % 2 ))


if [ $IS_PRESENT -eq $empCheck ]
then
	echo "Employee is present"
	
else
	echo "EMployee is absent"

fi

