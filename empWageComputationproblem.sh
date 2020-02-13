function dailywage()
{
	hours_per_day=8
	wage_per_hour=20
	daily_wage=$(($hours_per_day * $wage_per_hour))
	return $daily_wage
{
