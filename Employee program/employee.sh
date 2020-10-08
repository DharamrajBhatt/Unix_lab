echo "Dharamraj Bhatt"
echo "1947216"
echo "Input employee details"
echo "Do you want to add more employees? if yes press 1 , if no press 0"
read c
while [ $c -eq 1 ]
do
echo "Enter the name: "
read name
flag=1
while [ $flag -eq 1 ]
do
echo "Enter the emp id(integer value) "
read id
if ! [[ "$id" =~ ^[0-9]+$ ]]
then
echo "ID should be in integer only"
flag=1
else
flag=0
fi
done
echo "Enter the department"
read dept
echo "Enter the designation"
read des
flag=1
while [ $flag -eq 1 ]
do
echo "Enter basicpay(floating value)"
read bpay
if ! [[ "$bpay" =~ ^[0-9]*[.][0-9]*$ ]]
then
echo "Basic pay should be a floating integer only"
flag=1
else
flag=0
fi
done
echo $name $id $dept $des $bpay >> details.txt
echo "Do you want to add more employees? if yes press 1 , if no press 0"
read c
done
echo "To know the details press 1 else press 0"
read n
if [ $n -eq 1 ]
then
echo "Enter the employee id"
read eid
awk -v empid=$eid '{
if ($2 == empid)
{
print "Details of employee with id ",empid
print "Name\t\t: ",$1
print "Department\t: ",$3
print "Designation\t: ",$4
printf "Basic pay\t: %.2f\n",$5
da=$5 * 0.45
printf "DA\t\t: %.2f\n",da
hra=$5 * .12
printf "HRA\t\t: %.2f\n",hra
cca=400
printf "CCA\t\t: %.2f\n",cca
gp=$5+da+hra+cca
printf "GP\t\t: %.2f\n",gp
ap=gp * 12
printf "AP\t\t: %.2f\n",ap
pf=$5 * .25
printf "PF\t\t: %.2f\n",pf
if (ap <= 60000)
it=0.0;
else if(ap <= 120000)
it=.1 * gp;
else if(ap <= 180000)
it=.2 * gp;
else
it=.25 * gp;
np=gp - pf - it
printf "NP\t\t: %.2f\n",np
tot=$5 + da + hra + cca + gp + ap + pf + np
printf "Total Salary is\t: %.2f\n",tot
exit 1
}
}' details.txt
if [ $? -ne 1 ]
then
echo "Invalid ID"
fi
fi
