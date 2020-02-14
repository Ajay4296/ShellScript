echo "Add part time employe and wag
PartTime()
{
perdayhour=4
wage=20
totalparttimewage=$(( $perdayhour*$wage ))
return $totalparttimewage
}

