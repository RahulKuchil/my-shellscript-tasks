read -p "Enter the  filename to rename:" search             # Enter the old file name
read -p "Enter the rename filename to rename:" rename       # Enter the new file name
if [ -f $search ]; then
     if [ $(mv -i $search $rename) ]; then      # mv is the command to rename the file or directory
        echo "The file is renamed."
     fi
fi
