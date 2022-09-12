echo "Enter the number"
read n

for (( i=1 ; i<=n ; i++ ))
do
        ip=$(ip addr show eth2 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)    # command to print ip address 
        echo $ip >> ip.txt      # append the output in another file
done
