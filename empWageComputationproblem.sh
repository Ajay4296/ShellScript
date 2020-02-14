echo "select  choice on your concern"
echo " 1 -check attendence"
echo "2-check Daily employe wage"
echo "3-part_time_wage"
read input
case $input in 
1)
echo employe present $present day in 20 days
;;
2)
dailywage
perdaywage=$1
echo "daily wage :-$perdaywage
;;
3)
part_time
parttimewage=$1
echo "part time wage :- $parttimewage"
;;
0)
echo "enter avalid choice"
;;
esac


