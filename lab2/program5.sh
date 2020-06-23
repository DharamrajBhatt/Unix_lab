clear
#prime numbers
echo "reg no:1947216"
echo "name: Dharamraj Bhatt"
echo "enter a 1 range value:"
read n1
echo "enter a last range value:"
read n2
echo
echo
if [ $n1 -lt $n2 ]
then
while [ $n1 -le $n2 ]
do
    i=2
    flag=1
    while [ $i -lt $n1 ]
    do
       if [ `expr $n1 % $i` -eq 0 ]
       then
          flag=0
          break
       else
          i=`expr $i + 1`
       fi
    done
    if [ $flag -eq 1 ]
    then
        echo $n1
    fi
    n1=`expr $n1 + 1`
done
else
   echo "uff!!!! in range n1 should be always less then n2"
fi
