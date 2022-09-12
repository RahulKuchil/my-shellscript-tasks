echo -n "Enter File Name : "
read fileName
echo "Enter  the name to be changed"
read filename1

if [ $filename1 == toupper ]
then
        echo $filename1 | tr '[A-Z]' '[a-z]']       # convert uppercase to lowercase using tr command
        mv  $fileName $filename1 | tr ' [A-Z]' '[a-z]'
else
        echo $filename1 | tr '[a-z]' '[A-Z]']       # convert lowercase to uppercase using tr command
        mv $fileName  $filename1 | tr ' [a-z]' '[A-Z]'
fi
