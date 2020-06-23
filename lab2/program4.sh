clear
#factorial of a number
echo "reg no:1947216"
echo "name: Dharamraj Bhatt"
echo "enter a number"
read number
if [ $number -gt 0 ]
then
    i=1 
    fact=1
    while [ $number -ge $i ]
    do 
      fact=`expr $fact \* $i`
      i=`expr $i + 1`
    done 
    echo "factorial of a $number is $fact"
else
   echo "negative number"
fi
