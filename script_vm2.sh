sudo sysctl -w net.ipv4.ip_forward=1
sudo apt update
sudo apt install net-tools
ifconfig enp0s3 down
sudo apt install tcpdump

route del default gw 10.0.2.2
route add -net 192.168.0.0/24 gw 192.168.0.254
route add -net 10.0.0.0/24 gw 10.0.0.254