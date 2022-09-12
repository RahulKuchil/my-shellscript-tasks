function added() {
        value=$1$2$3
        if [[ $value -gt 0 ]]; then
                sum=$(($1+$2+$3))
                echo "${sum}"
        else
                echo "Error"
        fi
}
added $1 $2 $3
