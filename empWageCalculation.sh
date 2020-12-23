#!/bin/bash -x

echo "Welcome to Employee Wage Calculation Program"

isPartTime=1
isFullTime=2
empRatePerHr=20
workingDays=20
maxHrsInMonth=100

totalEmpHr=0
totalWorkingDay=0

while [[ $totalEmpHr -le $maxHrsInMonth && $totalWorkingDay -le $workingDays ]]	#Checks for the condition of monthly work hour limit
do
       totalWorkingDay=$(($totalWorkingDay+1))
       empCheck=$(($RANDOM%3))

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
        salary=$(($empHrs*$empRatePerHr))	#Wage for a single day
	totalSalary=$(($totalSalary+$salary))	#wage for a month
done


echo "Total Salary For Month Of Employee Is : $totalSalary"
