function f() {
    local n=$1
    if [[ $n -eq 0 ]]; then
        echo 1
    else
        echo $((n*$(f $n-1)))
    fi
}

for i in {1..10}; do
    echo "$i!=$(f $i)"
done
