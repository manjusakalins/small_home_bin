git clone https://github.com/rofl0r/proxychains-ng.git
cd proxychains-ng
./configure
make 
sudo make install
sudo cp ./src/proxychains.conf /etc/proxychains.conf
cd .. && rm -rf proxychains-ng

echo "Y" | sudo apt-get install fcitx fcitx-googlepinyin im-config fcitx-table-wbpy fcitx-config-gtk fcitx-table-wubi
sudo im-config -n fcitx

tar xfv make-3.81.tar.gz
cd make-3.81
./configure
make
sudo make install
cd -
rm -rf make-3.81/


