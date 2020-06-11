while true
do
echo "1.Program1"
echo "2.Program2"
echo "3.Exit"
echo "enter your choice"
read choice
case $choice in
1)read -p "Enter a filename: " filename

if [[ -f $filename ]] ; then
    echo "The file $filename exists."
    echo ""
    read -p "Enter the word you want to find: " word
    echo ""
    grep -n "$word" "$filename"
else
    echo "The file $filename does not exist."
fi
;;
2)read -p "Enter a filename: " filename

if [[ -f $filename ]] ; then
    echo "The file $filename exists."
    echo ""
    echo "the number of occurences of the words"
    grep -oE '[a-z]+' ex.txt | sort | uniq -c
else
    echo "The file $filename does not exist."
fi
;;
3)exit                                                                                       
;;
*)echo "invalid choice"                                                                                
;;
esac
done
