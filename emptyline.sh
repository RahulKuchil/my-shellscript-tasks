echo " Enter the file name"
read file

grep -Ev "^$" $file
