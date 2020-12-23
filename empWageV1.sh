#! /bin/bash

isAbsent=0
empWagePrHr=20
empHrs=8
randomCheck=$(( RANDOM % 2 ))
if [ $randomCheck -eq $isAbsent ]
then
   echo "Employee is absent"
	echo "Salary is zero."
else
   echo "Employee is present"
	salary=$(( empWagePrHr * empHrs ))
   echo "Salary is "$salary
fi
