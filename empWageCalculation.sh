#!/bin/bash -x

echo "Welcome to Employee Wage Calculation Program"

ISPARTTIME=1
ISFULLTIME=2
WAGEPERHR=20
WORKINGDAYS=20

totalSalary=0

for ((day=1;day<=WORKINGDAYS;day++))
do
        empcheck=$(($RANDOM%3)) #Using random to generate status of employee

	case $empcheck in
             	 $ISFULLTIME)
                        empHrs=8
                             ;;
                 $ISPARTTIME)
                        empHrs=4
                             ;;

                 *)
                        empHrs=0
                             ;;

                esac
        salary=$(($empHrs*$WAGEPERHR)) #calculates wage for single day
 	totalSalary=$(($totalSalary+$salary))	#Calculates wage for the whole month
done


echo "Total Salary For Month Of Employee Is : $totalSalary"
