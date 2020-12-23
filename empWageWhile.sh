#! /bin/bash -x

isPartTime=1;
isFullTime=2;
empWagePerHr=20;
totalHrs=0;
maxWorkingHrs=50;
totalDays=0;
maxWorkingDays=20;

while [[ $totalHrs -lt $maxWorkingHrs && $totalDays -lt $maxWorkingDays ]];
do
        ((totalDays++))
        empCheck=$(( RANDOM % 3 ));
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
        totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done

totalSalary=$(( $totalEmpHrs * $empWagePerHr ))
