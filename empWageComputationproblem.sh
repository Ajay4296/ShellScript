#!/bin/bash/ 
workingdays=20

echo total workingdays

presentemp=0
absenttemp=0

for((i=1;i<=$workingdays;i++))
do

random=$(($RANDOM%2))
if(($random==0))
then

echo employe  is present
presentemp=$(($presentemp+1))

else

echo employee  is absent
absenttemp=$(($absenttemp+1))

fi
done


echo total present employee = $presentemp

echo total absent employee = $absenttemp

Dailywage()
{
	hours_per_day=8
	wage_per_hour=20
	daily_wage=$((20 * 8))
	return $daily_wage
}

echo "Add part time employe and wage"

PartTime()
{
perdayhour=4
wage=20
totalparttimewage=$(( 20*4 ))
return $totalparttimewage
}

echo "select  choice who you want to execute"
echo " 1 -check attendence"
echo "2-check Daily employe wage"
echo "3-part_time_wage"

read input
case $input in 
1)
echo "employe present $presentemp day in 20 days"
;;

2)
Dailywage
perdaywage=$?
echo "daily wage :-$perdaywage"
;;

3)
PartTime
parttimewage=$?
echo "part time wage :- $parttimewage"
;;
*)
echo "enter avalid choice"
;;
esac



