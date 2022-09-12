for (( i = 1; i <= 9; i++ ))
do
   for (( j = 1 ; j <= 9; j++ ))
   do
        tot=`expr $i + $j`
        tmp=`expr $tot % 2`
        if [ $tmp -eq 0 ]; then
            echo -e -n "\033[47m " # White
        else
            echo -e -n "\033[40m "  # Black
        fi
  done
 echo -e -n "\033[40m"  # black, ensure it exists normally
 echo "" # new line
done
