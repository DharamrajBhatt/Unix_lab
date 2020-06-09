echo "name: Dharamraj Bhatt"
echo "reg. No:1947216"
function duplicate()
{
  echo "enter the file name:"
  read fname
  echo "number of duplicate lines are"
  sort $fname | uniq -cd 

}
duplicate
