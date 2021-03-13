! /bin/bash

# Constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=90
# Variable
totalWorkingHrs=0
totalWorkingDays=1

declare -a dailyWages

function getWorkingHrs() {
  local empCheck=$1
  local empHrs=0
  case $empCheck in
     $IS_PRESENT_FULL_TIME)
        empHrs=8 ;;
     $IS_PRESENT_PART_TIME)
        empHrs=4 ;;
     *)
        empHrs=0 ;;
  esac
  echo $empHrs
}

function calWageForDay() {
  local empHrs=$1
  echo $(( $EMP_RATE_PER_HR * $empHrs ))
}

while [ $totalWorkingDays -lt $MAX_WORKING_DAYS ] && [ $totalWorkingHrs -lt $MAX_WORKING_HRS ]
do
  empCheck=$(( RANDOM % 3 ))
  empHrs="$( getWorkingHrs $empCheck )"
  totalWorkingHrs=$(( $totalWorkingHrs + $empHrs ))
  (( totalWorkingDays++ ))
  dailyWages[$totalWorkingDays]="$( calWageForDay $empHrs )"
done
echo ${dailyWages[*]}
salary=$(( $totalWorkingHrs * $EMP_RATE_PER_HR ))
