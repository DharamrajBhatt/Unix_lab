echo "name: Dharamraj Bhatt"
echo "reg. no :1947216"
count=0
echo "Enter directory 1:"
read d1
echo "Enter directory 2:"
read d2
echo ""

#num=$(ls $d1 | wc -l)
#echo "tota files in dir1:$num"

function duplicate ()
{
#if [ $num -eq 0 ]
#then
 #  echo "the number od duplicate files are: $count"
  # exit
#else

   for i in `ls $d1`
   do
   for j in `ls $d2`
   do
        if [ "$i" == "$j" ]
        then
             ((++count))
        fi
   done
done
#num=$((num-1))
#recursion1
#fi
} 
duplicate
echo "the number of duplicate files are:$count"
