#!/bin/bash
#install the tools needed
sudo apt install -y build-essential cmake flex bison clang lld git llvm aria2c
#Fix path bug for clang
PATH=$PATH:/usr/lib/llvm-10/bin
#get the libraries
sudo git clone --recursive https://github.com/fgsfdsfgs/sm64-port.git -b xbox sm64xbox
sudo git clone --depth 1 --recurse-submodules --shallow-submodules https://github.com/XboxDev/nxdk.git
sudo touch *
sudo aria2c --file-allocation=none -c -x 10 -s 10 -d sm64xbox https://archive.org/download/super-mario-64-usa/Super%20Mario%2064%20%28U%29%20%5B%21%5D.z64
#Enter the working Mario64 Directory
cd sm64xbox
#Get the rom needed and change its name to proper name
sudo touch *
sudo mv *.z64 baserom.us.z64
#Add game enhancements to port
sudo git apply --verbose enhancements/60fps.patch
sudo git apply --verbose enhancements/fps.patch
sudo git apply --verbose enhancements/mem_error_screen.patch
#Make the port
make VERSION=us -j4
#Make safe directory to move build into before cleaning workspace
sudo mkdir xbe
sudo cp build/us_xbox/out/default.xbe xbe/
sudo cp *.iso xbe/
#Clean Workspace
make clean
cd ../../
#add done message
echo
echo "Port Created!"
echo
echo "All Done! Look in the xbe directory for your build."
echo
echo
exit
#Made by Mogi_codemasterv