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
echo total present days in 20 days = $presentemp

echo total absent days in 20 days = $absenttemp

