echo "Name: Dharamraj Bhatt"
echo "Reg.No: 1947216"
while true
do
echo "1. Demonstrate the commands to change the ownership of a file."
echo "2. Demonstrate the commands to change the group of user"
echo "3. Demonstrate the recursive option to assign file permission."
echo "4. create a shell script (Permission.sh) to assign the file privileges at the time of creating a file based on the Roles as mentioned below. (Use switch case)"
echo "FILE		FILE PERMISSION"
echo "Administrator	R W X"
echo "Student		R – –"
echo "Faculty 	        R W –"
echo "5. shell script to group and compress the file based on their file extension."
echo "6. shell script to archive the files which are not accessed for past three months."
echo "7. Create a compressed file called Collection.tar and move all the files starting with a specific character to the directory Collection.tar"
echo "8. Compress the files from the current directory which consume more than 1GB"
echo "9. Group and compress the files based on their file permission.(For example compress the file with ‘read’ only/’read&write’/’read,write&execute’)"
echo "10. EXIT"
echo "Enter your choice"
read choice
case $choice in
   1) cd 
      cd /tmp
      echo "total files and their owners"
      ls -l
      echo "Enter the file name to change the owner"
      read file
      echo "enter new owner name"
      read owner
      sudo chown $owner $file
      echo "after change the owner of file"
      ls -l 
      ;;
   2) echo -n "Enter a group name to be created:"
      read group
      sudo groupadd $group
      echo -n "Enter username which will be made member of $group: "
      read user
      sudo usermod -a -G $group $user
      echo "$user is part of:"
      groups $user
      ;;
   3)echo "enter the directory name where you want create files"
     read dir
     mkdir $dir
     echo "Creating 10 files named test1.txt,test2.txt,......test10.txt"
     touch dir/test{1..10}.txt
     ls -l dir
 
     echo -n "Enter the absolute value of permission: "
     read per
 
     chmod -R $per dir
 
     echo "after Permissions change: "
     ls -l dir 
     ;;
   4) 
      ;;
   5) 
      ;;
   6) 
      ;;
   7) 
      ;;
   8);;
   9);;
   10) break
     ;;
   *) echo "Invalid Choice"
     ;;
esac
done
