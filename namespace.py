for (( i=1; i<=$1; i++ )); do

        ip netns add ns$i     #create namespace

        ip link add v-net-1 type bridge   #create a bridge
        ip link set dev v-net-1 up      #make bridge status up

        ip link add veth$i type veth peer name veth$i-br  #create virtual namespace port and virtual bridge port and link

        ip link set veth$i netns ns$i   #link virtual namespace port to namespace
        ip link set veth$i-br master v-net-1   #link virtual bridge port to  bridge
        ip  link set veth$i-br up  #make virtual bridge port up

        ip -n ns$i addr add 192.168.1.$i/24 dev veth$i  #set ip address to namespaces

        ip -n ns$i link set veth$i up  #make virtual namespace port up

        ip addr add 192.168.1.5/24 dev v-net-1  #set ip address to virtual bridge

        ip netns exec ns$i ip route add 202.56.230.0/24 via 192.168.1.5  #add routing table to namespaces

        iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -j MASQUERADE  # NAT which translate internal ip addr to external ip addr

        ip netns exec ns$i ip route add default via 192.168.1.5  #add default gateway to namespace routing table


        ip netns exec ns$i ping -c 3 8.8.8.8  #ping server ip through namespaces
done

