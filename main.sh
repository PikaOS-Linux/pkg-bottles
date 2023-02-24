# Add dependent repositories
wget -q -O - https://ppa.pika-os.com/key.gpg | sudo apt-key add -
sudo add-apt-repository https://ppa.pika-os.com
sudo add-apt-repository ppa:pikaos/pika
sudo add-apt-repository ppa:kubuntu-ppa/backports
# Clone Upstream
https://github.com/lassekongo83/adw-gtk3
cp -rvf ./debian ./adw-gtk3/
cd ./adw-gtk3

# Get build deps
sudo apt-get build-dep ./

# Build binaries
echo -ne '\n'  | debuild -us -uc