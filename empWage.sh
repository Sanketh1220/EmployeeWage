#! /bin/bash

# Constant
IS_PRESENT_PART_TIME=2
IS_PRESENT_FULL_TIME=1
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=90

totalWorkingHours=0
totalWorkingDays=0
	
while [ $totalWorkingDays -lt $MAX_WORKING_DAYS ] && [ $totalWorkingHours -lt $MAX_WORKING_HOURS ]
do
	# variable
	empCheck=$(( RANDOM % 3 ))
	(( totalWorkingDays++ ))
	
		case $empCheck in
			$IS_PRESENT_FULL_TIME)
			 empHrs=8 ;; 

			$IS_PRESENT_PART_TIME)
			 empHrs=4 ;;
		
			*)
			 empHrs=0 ;;

	esac
		
	totalWorkingHours=$(( $totalWorkingHours + $empHrs ))

done

salary=$(( $totalWorkingHours * $EMP_RATE_PER_HR ))
