echo "Name: Dharamraj Bhatt"
echo "Reg.No: 1947216"
while true
do
echo "Create a text file of your choice and execute the following:"
echo "1. awk -f program-file input-file"
echo "2. awk '{ print $3 }' input file"
echo "3. awk '/0.5/ { print $1 }' input file"
echo "4. awk '/^[0-9][0-9]/ { print $1 }' input file"
echo "5. awk '$2 ~ /ia/ { print $1 }' input file"
echo "6. awk '$2 !~ /ia/ { print $1 }' input file"
echo "7. awk '$3 > 50 { print $1 }' input file"
echo "8. awk '$4 == 31, $4 == 33 { print $0 }' input file"
echo "9. awk 'BEGIN { print "Start Processing." }; { print $3 }; END { print "End Processing." }' input file"
echo "10. awk 'BEGIN { FS = "." } { print $1 }' input file"
echo "11. EXIT"
echo "Enter your choice"
read choice
case $choice in
   1) echo -n "enter program file name:"
      read pname
      echo -n "enter input file name:"                                                                 
      read iname
      awk -f $pname $iname 
      echo ""
      ;;
   2) echo "enter file name:"
      read fname
      awk '{ print $3 }' $fname
      echo ""
      ;;
   3) echo "enter file name:"
      read fname
      awk '/0.5/ { print $1 }' $fname
      echo ""
      ;;
   4) echo "enter file name:"
      read fname
      awk '/^[0-9][0-9]/ { print $1 }' $fname
      echo""
      ;;
   5) echo "enter file name:"
      read fname
      awk '$2 ~ /ia/ { print $1 }' $fname
      echo ""
      ;;
   6) echo "enter file name:"
      read fname
      awk '$2 !~ /ia/ { print $1 }' $fname
      echo ""
      ;;
   7) echo "enter file name:"
      read fname
      awk '$3 > 50 { print $1 }' $fname
      echo ""
      ;;
   8) echo "enter file name:"
      read fname
      awk '$4 == 31, $4 == 33 { print $0 }' $fname
      echo ""                                                                                              
      ;;
   9) echo "enter file name:"
      read fname
      awk 'BEGIN { print "Start Processing." }; { print $3 }; END { print "End Processing." }' $fname
      echo ""
      ;;
   10) echo "enter file name:"
      read fname
      awk 'BEGIN { FS = "." } { print $1 }' $fname
      echo ""
      ;;
   11) break
     ;;
   *) echo "Invalid Choice"
     ;;
esac
done
