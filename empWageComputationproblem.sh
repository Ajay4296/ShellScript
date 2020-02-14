echo "daily activity of  employee"
count=0
for((i=1;i<=20;i++))
do 
a=$((RANDOM%4))
if($a<=1)
then 
echo "Employee is present"
count=$(($count+1))
Dailywage
d=$?
echo "total income of day $i is $d" 
fi

if($a==2)
then
echo "employe is absent on day $i of the month"
fi
if($a==3)
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
