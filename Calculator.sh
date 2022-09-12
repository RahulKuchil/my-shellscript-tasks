echo " Enter first number"
echo $1
echo " Enter second number"
echo $2

echo " Enter the choice "
echo " 1.Addition "
echo " 2.Subtraction "
echo " 3.Multiplication"
echo " 4.Division"
read ch

case  $ch in
  1)res=`expr $1 + $2`                  # addition
  ;;
  2)res=`expr $1 - $2`                  # subtraction
  ;;
  3)res=`expr $1 \* $2`                 # multiplication
  ;;
  4)res=`echo "scale=2; $1 / $2" | bc ` # Division
  ;;
esac
echo "Result is $res"                   # print the result
