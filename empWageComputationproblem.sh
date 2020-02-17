workinghours=0
dailyworking=0
while [[ $workinghours -le 100 ]]
do
dailyworking=$(($dailyworking+$((8*20))))
workinghours=$(($workinghours+8))
if((workinghours==96))
then
workinghours=$(($workinghours+4))
dailyworking=$(($dailyworking+$((4*20))))
fi
done
echo  "dailyworking $dailyworking"



