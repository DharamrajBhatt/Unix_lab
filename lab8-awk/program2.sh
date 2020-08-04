echo " Name: Dharamraj Bhatt"
echo " Reg.No:1947216"
awk 'BEGIN{FS=","}{print $1"\t"$2"\t"$3}' download.csv> new1.txt
cat new1.txt 
