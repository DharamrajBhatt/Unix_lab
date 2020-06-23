echo "name: Dharamraj Bhatt"
echo "reg. no: 1947216"
if [ $# -eq 3 ]
then
  if [ $1 -ge $2 -a $1 -ge $3 ]
  then
     echo "largest number is: $1"
  elif [ $2 -ge $1 -a $2 -ge $3 ] 
  then 
      echo "largest number is: $2"
  else
       echo "largest number is: $3"
  fi
else
  echo "Sorry!! you have entered the wrong number of command line arguments. please!! check and try again."
fi
