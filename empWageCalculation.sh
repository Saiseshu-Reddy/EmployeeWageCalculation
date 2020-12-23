#!/bin/bash -x

echo "Welcome to Employee Wage Calculation Program"

WAGEPERHR=20
FULLDAYHR=8

#Employee attendace check user case
var=$(($RANDOM%2))

if [ $var -eq 1 ]
then
	dailyWage=$(($WAGEPERHR*$FULLDAYHR))	#Calculates daily wage of employee if he is present
	echo "The Daily Wage of Employee is: $dailyWage"
else
	echo "Employee is Absent"
fi


