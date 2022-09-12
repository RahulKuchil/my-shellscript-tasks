echo "How many number of terms to be generated ?" #Enter the value 
  read n
function fib
{
  x=0
  y=1
  i=2
  echo "Fibonacci Series up to $n terms :"  
  echo "$x"
  echo "$y"
  while [ $i -lt $n ]
  do
      i=`expr $i + 1 `                    # increase the each time by 1
      z=`expr $x + $y `
      echo "$z"
      x=$y                                
      y=$z
  done
}
r=`fib $n`
echo "$r"                                 # Print the fibonocci series
