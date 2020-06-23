clear
echo "name : Dharamraj Bhatt"
echo "reg no: 1947216"
echo "enter the number of line"
read lines
for ((i=1; i<=lines; i++))
do
   for ((j=1; j<=lines - i; j++))
   do
     echo -n " "
   done
   for ((j=1; j<=2*i - 1; ++j))
   do
   if [ $i -ge $j ]
   then
     echo -n "$i "
   fi
   done
   echo ""
done
