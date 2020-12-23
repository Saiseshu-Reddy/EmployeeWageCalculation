#!/bin/bash -x

echo "Welcome to Employee Wage Calculation Program"

isPartTime=1
isFullTime=2
empRatePerHr=20
workingDays=20
maxHrsInMonth=100

totalEmpHrs=0
totalWorkingDays=0

function getWorkingHrs ()	#Function for employee working hours calculation
{
        case $1 in
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

function getEmpWage()	#Function to get employee wage
{
	empHrs=$1
	echo $(($empHrs*$empRatePerHr))
}

while [[ $totalEmpHrs -le $maxHrsInMonth && $totalWorkingDays -le $workingDays ]]	#Employee max working hour limit condition
do
        totalWorkingDays=$(($totalWorkingDays+1))
	empHrs=$( getWorkingHrs $(($RANDOM%3)) )
	totalEmpHrs=$(($totalEmpHrs+$empHrs))	#Employee total working hours
	dailyWages[$totalWorkingDays]=$( getEmpWage $empHrs )	#Array to save the daily wages of the employee
done

totalSalary=$(($totalEmpHrs*$empRatePerHr))	#calculating wage from total working hours


echo "Total Salary Of Employee Is : $totalSalary"

echo "Daily Wages of Employee is: ${dailyWages[@]}"
