clear
echo "reg no:1947216"
echo "name : Dharamraj Bhatt"
count=0
echo "Enter first filename:"
read f1
echo "Enter second filename:"
read f2

for i in `egrep "\w" $f1`
do
   for j in `egrep "\w" $f2`
   do
        if [ "$i" == "$j" ]
        then
             echo "$i" >>similar.txt
        fi
   done
done
