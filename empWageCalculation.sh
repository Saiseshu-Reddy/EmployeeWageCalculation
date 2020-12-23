#!/bin/bash -x

echo "Welcome to Employee Wage Calculation Program"

WAGEPERHR=20
FULLDAYHR=8
PARTTIMEHR=4

#Random to generate whether the employee is part-time/ full-time/ absent
var=$(($RANDOM%3))

if [ $var -eq 1 ]
then
	dailyWage=$(($WAGEPERHR*$FULLDAYHR))	#Calculates daily wage of full time employee if he is present
	echo "The Daily Wage of Full Time Employee is: $dailyWage"
elif [ $var -eq 2 ]
then
	dailyWage=$(($WAGEPERHR*$PARTTIMEHR))	#Calculates daily wage of part time employee if he is present
	echo "The Daily Wage of Part Time Employee is: $dailyWage"
else
	echo "Employee is Absent"
fi


