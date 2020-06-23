echo "Name: Dharamraj Bhatt"
echo "Reg.No: 1947216"
echo "enter the size of the array"
read size
declare -a arr
for ((i=0;i<size;i++))
do
    echo "enter the element[$i]:"
    read arr[$i]
done
while true
do
echo "1. DISPLAY ALL ARRAY ELEMENTS"
echo "2. DISPLAY ALL ELEMENTS IN A RANGE"
echo "3. DISPLAY THE NUMBER OF ARRAY ELEMENTS"  
echo "4. REPLACE A SUBSTRING IN AN ARRAY ELEMENT" 
echo "5. SORT AND DISPLAY THE ARRAY ELEMENT IN ASCENDING ORDER AND DESCENDING ORDER"
echo "6. COPY AN ARRAY ELEMENTS TO ANOTHER ARRAY"
echo "7. DISPLAY THE SUM AND AVERAGE OF ODD POSITION ELEMENTS AND EVEN POSITION ELEMENTS OF AN ARRAY AND FIND WHICH POSITION NUMBERS ARE HAVING GREATER AVERAGE"
echo "8. EXIT"
echo "Enter your choice"
read choice
case $choice in
   1) echo "array elements are:${arr[*]}"
      echo ""
      ;;
   2) echo "enter start index:"
      read start
      echo "Enter finish index"
      read finish
      echo "elements between $start and $finish are :${arr[@]:$start:$finish}"
      echo ""
      ;;
   3) echo "Number of array elements are:${#arr[*]}"
      echo ""
      ;;
   4) echo "Eneter the index of the element which you want to replace:"
      read replace
      echo "enter the element which you wanr to replace:"
      read push
      arr[replace]=$push
      echo "after replacement array elements are:${arr[*]}"
      echo ""
      ;;
   5) sortedAssending=( $( printf "%s\n" ${arr[@]} | sort -n ) )
      echo "array elements are in Assending order:${sortedAssending[*]}"
      #for ((i = 0; i<size; i++)) 
      #do
      #   for((j = 0; j<size-i-1; j++)) 
      #   do
      #      if [ ${arr[j]} -lt ${arr[`expr $j + 1`]} ]
      #      then 
      #         temp=${arr[j]} 
      #         arr[$j]=${arr[`expr $j + 1`]}   
      #         arr[$((j+1))]=$temp 
      #      fi
       #  done
      #done
      sortedDescending=( $( printf "%s\n" ${arr[@]} | sort -r ) )
      echo "array elements are in Descending order:${sortedDescending[*]}"
      echo ""
      ;;
   6) anotherArr=("${arr[*]}")
      echo "element of another array are:${anotherArr[*]}"
      echo ""
      ;;
   7) sum1=0
      sum2=0
      i=0
      count1=0
      count2=0
      while [ $i -lt $size ]
      do
      if [ `expr $i % 2` -eq 0 ]
      then
           sum1=`expr $sum1 + ${arr[i]}`
           i=`expr $i + 1`
           ((count1++))
      else
           sum2=`expr $sum2 + ${arr[i]}`
           i=`expr $i + 1`
           ((count2++))
      fi
      done
      echo "sum of even position numbers:$sum1"
      evenAvg=`echo "$sum1 / $count1" | bc`
      echo "Even average :$evenAvg"
      echo "sum of even position numbers:$sum1"
      oddAvg=`echo "$sum2 / $count2" | bc`
      echo "Odd average :$oddAvg"
      if [ $evenAvg -gt $oddAvg ]
      then 
          echo "Even position numbers average is greater than odd position numbers average"
      else
          echo "Odd position numbers average is greater than Even position numbers average"
      fi
      echo ""
      ;;
   8) break
     ;;
   *) echo "Invalid Choice"
     ;;
esac
done
