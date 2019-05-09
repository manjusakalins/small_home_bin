(echo "Y") | sudo add-apt-repository ppa:danielrichter2007/grub-customizer
(echo "Y") | sudo add-apt-repository ppa:openjdk-r/ppa
#(echo "Y") | sudo apt-get install nautilus-open-terminal
(echo "Y") |sudo add-apt-repository ppa:ubuntu-wine/ppa
(echo "Y") | sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo apt-get update
(echo "Y") | sudo apt-get install grub-customizer
(echo "Y") | sudo apt-get install openjdk-7-jdk
sudo apt-get install wine1.8
sudo apt install pycharm
## sudo apt remove pycharm pycharm-community && sudo apt autoremove
#curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
#https://github.com/spf13/spf13-vim
#update 
#curl https://j.mp/spf13-vim3 -L -o - | sh



#down load dir change
#修改$HOME/.config/user-dirs.dirs这个文件
sudo cp jdk-6u37-linux-x64.bin /opt/
cd /opt/
sudo chmod 777 jdk-6u37-linux-x64.bin
sudo ./jdk-6u37-linux-x64.bin
cd -
sudo sh javacfg.sh


#/dev/sda2   /media/misc_data  ext4    rw,defaults  0   2
#/dev/sda3   /media/4Tdata  ext4    rw,defaults  0   2
echo "
please echo such stuff int to /etc/fstab, make your work disk as workdata
/dev/sda2   /media/misc_data  ext4    rw,defaults  0   2
/dev/sda3   /media/workdata  ext4    rw,defaults  0   2
and reboot !!!!!!!!!!!!!!!!!!!!!!!!!!!
do reboot to mount the 4Tdata
"

sudo mkdir /media/workdata
sudo mkdir /media/misc_data
mkdir ~/cur_images
mkdir ~/tmp

