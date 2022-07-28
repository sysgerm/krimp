echo"
------------------------------------------------------
|                  Krimp Installer                   |
------------------------------------------------------
"



# Makes a git folder
mkdir ~/Downloads/git

# BeEF
sudo apt-get install git
sudo apt-get install curl
cd ~/Downloads/git
git clone https://github.com/beefproject/beef.git
cd beef/
./install

# Bettercap
sudo apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev
go get -u github.com/bettercap/bettercap

# Gnome-terminal
sudo apt install gnome-terminal

# Apache 2
sudo apt install apache2
