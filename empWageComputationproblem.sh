echo "Add part time employe and wage"
function part_time()
{
perdayhour=4
wage=20
totalparttimewage=$(( $perdayhour*$wage ))
return $totalparttimewage

