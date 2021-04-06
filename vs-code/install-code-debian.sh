#!/bin/bash

## STEPS TO INSTALL VISUAL STUDIO CODE ON DEBIAN-BASED LINUX DISTRIBUTIONS ##


## STEP A: The easiest way to install Visual Studio Code for Debian/Ubuntu based distributions is to download and install the .deb package (64-bit), either through the graphical software center (https://code.visualstudio.com/Download) if available, or through the command-line: ##

#sudo apt install ./<file>.deb



## If you are on an older distribution, run the following instead: ##

#sudo dpkg -i <file>.deb
#sudo apt-get install -f # install dependencies



#### If software package is unavailable, follow STEPS 1 and 2 below to install VS Code ####



## STEP 1: Install apt repository and GPG signing key to enable auto-updating using the system's package manager ##

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'



## STEP 2: update cache and install package ##

sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders
