#!/bin/bash -x

echo "Welcome to Employee Wage Calculation Program"

#Employee attendace check user case
var=$(($RANDOM%2))

if [ $var -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi


