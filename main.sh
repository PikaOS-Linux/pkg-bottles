# Clone Upstream
git clone https://github.com/bottlesdevs/Bottles -b 51.9 ./bottles
cp -rvf ./debian ./bottles/
cd ./bottles

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
