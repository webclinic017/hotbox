# # minimal init
# rc-service sysfs start
# rc-service networking start

# # set up network interface
# source /usr/buildenv
# echo Setting up IP: $IP gateway: $GATEWAY
# ifconfig eth0 up && ip addr add dev eth0 $IP
# ip route add default via $GATEWAY

# run the code in the microvm
# the firecracker compiler will place the code here
/usr/local/bin/fcvm-app

# shutdown the microvm
reboot
