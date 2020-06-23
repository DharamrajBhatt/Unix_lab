clear
echo "reg no:1947216"
echo "name : Dharamraj Bhatt"
count=0
echo "Enter directory 1:"
read d1
echo "Enter directory 2:"
read d2

for i in `ls $d1`
do
   for j in `ls $d2`
   do
        if [ "$i" == "$j" ]
        then
             ((++count))
             rm $d1/$i
             echo "$i" >>duplicate.txt
        fi
   done
done
echo "number of repeated files are: $count"
