sudo apt update
sudo apt install net-tools
ifconfig enp0s3 down
route del default gw 10.0.2.2
route add default gw 192.168.0.254
