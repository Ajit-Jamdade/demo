#! /bin/bash -x

#CONSTANTS
isPartTime=1;
isFullTime=2;
empWagePerHr=20;
totalHrs=0;
maxWorkingHrs=50;
totalDays=0;
maxWorkingDays=4;

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

while [[ $totalHrs -lt $maxWorkingHrs && $totalDays -lt $maxWorkingDays ]];
do
        ((totalDays++))
        empCheck="$( getWorkingHours $(( RANDOM % 3 )))";
        totalEmpHrs=$(( totalEmpHrs + empHrs ))
done

totalSalary=$(( totalEmpHrs * empWagePerHr ))
