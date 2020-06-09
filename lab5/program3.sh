 
echo "Name : Dharamraj Bhatt"
echo "Reg. No: 1947216"

function get_time (){
	hours=`date "+%H"`
	minutes=`date "+%M"`
	time_in_minutes=`expr $hours \* 60 + $minutes`
	greeting_message=""
	if [[ $time_in_minutes -lt 720 ]]
	then
		greeting_message="Good_morning"
	elif [[ $time_in_minutes -ge 720 && $time_in_minutes -lt 1020 ]]
	then
		greeting_message="Good_afternoon"
	elif [[ $time_in_minutes -ge 1020 && $time_in_minutes -lt 1140 ]]                 
	then 
		greeting_message="Good_evening"
	elif [[ $time_in_minutes -ge 1140 && $time_in_minutes -lt 1440 ]]                     
	then
		greeting_message="Good_night"
	fi

}
echo
echo
echo -n "Enter your name : "
read name
get_time 
echo
echo "Hello! $name"
now=$(date +"%T")
echo "$greeting_message"
echo -n "Time:$now"
echo ""
