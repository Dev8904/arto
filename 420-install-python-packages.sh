#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
# Website   : https://www.arcolinux.info
# Website   : https://www.arcolinux.com
# Website   : https://www.arcolinuxd.com
# Website   : https://www.arcolinuxb.com
# Website   : https://www.arcolinuxiso.com
# Website   : https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

#nemesis-repo added to /etc/pacman.conf

echo
tput setaf 3
echo "################################################################"
echo "################### Python Packages"
echo "################################################################"
tput sgr0
echo

echo
tput setaf 3
echo "################################################################"
echo "################### Installing Python Web Packages..."
echo "################################################################"
tput sgr0
echo

pip install Django
pip install flask
pip install Bottle
pip install pyramid
pip install django-cms
pip install plone

echo
tput setaf 3
echo "################################################################"
echo "################### Installing Python Internet Protocol Packages..."
echo "################################################################"
tput sgr0
echo

pip install requests
pip install beautifulsoup4
pip install feedparser
pip install paramiko
pip install Twisted
pip install httplib2
pip install lxml
pip install randomuser

echo
tput setaf 3
echo "################################################################"
echo "################### Installing Python Numeric Packages..."
echo "################################################################"
tput sgr0
echo

pip install scipy
pip install pandas
pip install numpy
pip install matplotlib
pip install seaborn
pip install folium

echo
tput setaf 3
echo "################################################################"
echo "################### Installing Python GUI's..."
echo "################################################################"
tput sgr0
echo

#pip install kivy
pip install rich

echo
tput setaf 3
echo "################################################################"
echo "################### Installing Python Machine Learning..."
echo "################################################################"
tput sgr0
echo

pip install keras
pip install sklearn


echo
tput setaf 3
echo "################################################################"
echo "################### Installing Python SQL..."
echo "################################################################"
tput sgr0
echo

pip install sqlalchemy
pip install ipython
pip install ipython-sql

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
