echo "Name: Dharamraj Bhatt"
echo "Reg.No: 1947216"
echo "enter the number of the employees:"
read size
declare -a arrEmp
declare -a arrBasic
declare -a arrGross
for ((i=0;i<size;i++))
do
    echo "enter the name[$i]:"
    read arrEmp[$i]
    echo "enter the basic salary[$i]:"
    read arrBasic[$i]
    arrGross[$i]=0.0
done
echo ""
echo "intially the detail of employees"
echo "Employee name:${arrEmp[*]}"
echo "Basic salary:${arrBasic[*]}"
echo "Gross salary:${arrGross[*]}"
echo ""
for ((i=0;i<size;i++))
do
   if [ ${arrBasic[i]} -lt 15000 ]
   then
       increment=`echo "${arrBasic[i]} * 0.90" | bc `
       arrGross[i]=`echo "${arrBasic[i]} + $increment" | bc `
   else
       increment=`echo "${arrBasic[i]} * 0.98" | bc ` 
       arrGross[i]=`echo "${arrBasic[i]} + $increment" | bc `
   fi
done
echo ""
echo "after calculating the gross salary"
echo "Employee name:${arrEmp[*]}"
echo "Basic salary:${arrBasic[*]}"
echo "Gross salary:${arrGross[*]}"
