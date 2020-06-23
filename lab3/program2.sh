clear
echo "name : Dharamraj Bhatt"
echo "reg no: 1947216"
echo "enter the number of line"
read lines
for ((i=1;i<=lines;i++))
do
  for ((j=1;j<=i;j++))
  do
    echo -n "* "
  done
     echo ""
done
for ((i=1;i<=lines;i++))
do
  for ((j=lines;j>=i;j--))
  do
    echo -n "* "
  done
     echo ""
done

