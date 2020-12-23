#!/bin/bash -x

echo "Welcome to Employee Wage Calculation Program"
echo -ne "\n1. Part Time \n2. Full Time \n3.Enter Empolyee Type : \n"
WAGEPERHR=20
FULLDAYHR=8
PARTTIMEHR=4

#Random to generate whether the employee is part-time/ full-time/ absent
var=$(($RANDOM%3))
echo $var

case $var in	#Switch case to select the option
	1)
		dailyWage=$(($WAGEPERHR*$PARTTIMEHR))   #Calculates daily wage of part time employee if he is present
	        echo "The Daily Wage of Part Time Employee is: $dailyWage"
		;;
	2)
		dailyWage=$(($WAGEPERHR*$FULLDAYHR))    #Calculates daily wage of full time employee if he is present
                echo "The Daily Wage of Full Time Employee is: $dailyWage"
                ;;
	*)
		echo "Employee is absent"
		;;
esac

