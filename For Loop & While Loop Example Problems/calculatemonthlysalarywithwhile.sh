#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

totalWorkingHr=0;

day=0;
while [[ $day -lt $MAX_WORKING_DAY && $(($totalWorkingHr+4)) -lt $MAX_WORKING_HOUR ]]
do

	empCheck=$((RANDOM%3));
	case $empCheck in
		$PRESENT)
			empHr=8;
		;;

		$PART_TIME)
			empHr=4;
		;;

		*)
			empHr=0;
		;;
	esac;

	#if [ $(($totalWorkingHr + $empHr)) -gt $MAX_WORKING_HOUR ]
	#then
	#	break;
	#fi

	totalWorkingHr=$(($totalWorkingHr + $empHr));
	((day++));
done

salary=$(($totalWorkingHr * $PAY_PER_HOUR));

echo "Emp Salary of month : $salary (Total Working Hour : $totalWorkingHr)"