#! /bin/bash -x

#CONSTANTS
isPartTime=1;
isFullTime=2;
empWagePerHr=20;
totalHrs=0;
maxWorkingHrs=50;
totalDays=0;
maxWorkingDays=4;
declare -A dailyWage
function getWorkingHours(){
        local empCheck=$1
        case $empCheck in
                $isFullTime)
                        empHrs=8
                        ;;
                $isPartTime)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        echo $empHrs
}

function getDailywage(){
	local empCheck=$1
	echo $((empCheck*empWagePerHr))


}

while [[ $totalHrs -lt $maxWorkingHrs && $totalDays -lt $maxWorkingDays ]];
do
        ((totalDays++))
        empCheck="$( getWorkingHours $(( RANDOM % 3 )))";
	echo $empCheck
        totalEmpHrs=$(( totalEmpHrs + empCheck ))
	dailyWage["Day "$totalDays]="$( getDailyWage $empCheck)"
done

totalSalary=$(( totalEmpHrs * empWagePerHr ))
echo ${dailyWage[@]}
echo "Keys are "${!dailyWage[@]}
