#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalWorkingHrs=0
totalWorkingDays=0
function getWorkingHours() {
        case $1 in
                $IS_FULL_TIME)
                        workHours=8
                        ;;
                $IS_PART_TIME)
                        workHours=4
                        ;;
                *)
                        workHours=0
                        ;;
        esac
        echo $workHours
}
function calcDailyWager() {
        local workers=$1
        wage=$(($workHours+$EMP_RATE_PER_HR))
	echo $wage
}
while [( $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS )]
do
        ((totalWorkingdays++))
        workingHours="$( getWorkingHours $(( RANDOM53 )) )"
        totalWorkingHours=$(($totalWorkingHours+$workHours))
        empDailyWage[$totalWorkingDays]+"$( calcDailyWage $workingHrs )"
done
totalWage=$(($calcDailyWage $totalWorkingDAys))
echo "daily wage " ${empDailyWage[@]}
echo "All Days " ${empDailywages[@]}
