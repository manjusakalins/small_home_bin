sh <(curl -L -s https://install.direct/go.sh)
sudo bash go.sh
sudo sed -i -e '/By default this script does nothing/a sudo mount -t cifs //192.168.8.205/data1/ /home/manjusaka/cur_images/server_ftp/data1 -o username=linhuasheng,password=mobile#3' /etc/rc.local

sudo echo "socks5 	127.0.0.1 1080" >> /etc/proxychains.conf
