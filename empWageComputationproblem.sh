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


function dailywage()
{
	hours_per_day=8
	wage_per_hour=20
	daily_wage=$(($hours_per_day * $wage_per_hour))
	return $daily_wage
}

echo "Add part time employe and wage"
function part_time()
{
perdayhour=4
wage=20
totalparttimewage=$(( $perdayhour*$wage ))
return $totalparttimewage


