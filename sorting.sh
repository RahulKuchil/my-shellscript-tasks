echo "enter Numbers in array:"
for (( i = 0; i < $n; i++ ))
do
    read nos[$i]
done

echo "Numbers in an array are:"
for (( i = 0; i < $n; i++ ))
do
    echo ${nos[$i]}
done

for (( i = 0; i < $n ; i++ ))
do
    for (( j = $i; j < $n; j++ ))
    do
        if [ ${nos[$i]} -gt ${nos[$j]}  ]; then       #Sorting
        t=${nos[$i]}
        nos[$i]=${nos[$j]}
        nos[$j]=$t
        fi
    done
done
echo -e "\nSorted Numbers "
for (( i=0; i < $n; i++ ))
do
    echo ${nos[$i]}
done
