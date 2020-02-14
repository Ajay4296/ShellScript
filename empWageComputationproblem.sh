

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
presentemp=$(($presentemp+1))
else
absenttemp=$(($absenttemp+1))
fi
done
echo total present days in 20 days = $presentemp

echo total absent day in total days = $absenttemp
Dailywage()
{
	hours_per_day=8
	wage_per_hour=20
	daily_wage=$((20 * 8))
	return $daily_wage
}

PartTime()
{
perdayhour=4
wage=20
totalparttimewage=$(( 20*4 ))
return $totalparttimewage
}

echo "select  choice of your concern"
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
echo " full time daily wage of employee  :-$perdaywage"
;;

3)
PartTime
parttimewage=$?
echo "part time daily wage of employee  :- $parttimewage"
;;
*)
echo "enter avalid choice"
;;
esac


echo " calculate total income of employee in a month:-"
days=0
for((i=1;i<=20;i++))
do
a=$((RANDOM%2))
if(( $a==0 ))
then
PTworkdays=$(($PTworkdays+1))
fi
done
echo "total part time work $PTworkdays"
PartTime
income=$?
parttimeIncome=$(( $PTworkdays*$income ))
Dailywage
fullTimeIncome=$?
fullTimeIncome=$(( $presentemp*$fullTimeIncome ))
totalIncome=$(( $income+$fullTimeIncome ))
echo "total Income of employe :-$totalIncome"
echo "calculate total working hour of the employee"
totalworkinghour=$(($(($PTworkdays*4))+$(($presentemp*8))))

totalhour()
{
workhour=$totalworkinghour
echo "total work hour of employee =$workhour"
return $workhour
}
totalhour
wh=$?
Dailywage
perdaydailywage=$?
PartTime
parttimedailywage=$?
totaldailywage=$(($perdaydailywage+$parttimedailywage))
totalincome=$totalIncome
echo "total work hour of employee in a month=$wh"
echo "total daily income of the employe is=$totaldailywage"
echo "total monthly income of employe is=$totalincome"

echo "daily activity of  employee :-"
count=0
for((i=1;i<=20;i++))
do 
a=$((RANDOM%4))
if(($a<=1))
then 
echo "Employee is present on day $i of the month"
Dailywage
d=$?
echo "total income of day $i is $d" 
fi


if(($a==2))
then
echo "employe is absent on day $i of the month"
fi
if(($a==3))
then
echo "employee is present and want overtime also"
Dailywage
b=$?
PartTime
p=$?
total=$(($p+$b))
echo "total income of day $i  is $total"
fi
done

