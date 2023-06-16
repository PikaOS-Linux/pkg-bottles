# Clone Upstream
git clone https://github.com/lassekongo83/adw-gtk3 -b v4.6
cp -rvf ./debian ./adw-gtk3/
cd ./adw-gtk3

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
