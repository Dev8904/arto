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

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings to reset to default"
echo "################################################################"
tput sgr0
echo
echo "To personal Kvantum setup"
echo
[ -d $HOME"/.config/Kvantum" ] || mkdir -p $HOME"/.config/Kvantum"
cp -r $installed_dir/settings/Kvantum/* $HOME/.config/Kvantum
sudo cp -r $installed_dir/settings/Kvantum/* /etc/skel/.config/Kvantum

echo "################################################################"
echo "################### Perosnal setings for xfce"
echo "################################################################"
if [ -f /usr/share/xsessions/xfce.desktop ]; then
echo
echo "To default xfce settings"
echo
[ -d $HOME"/.config/xfce4/xfconf/xfce-perchannel-xml/" ] || mkdir -p $HOME"/.config/xfce4/xfconf/xfce-perchannel-xml/"
cp  $installed_dir/settings/xfce/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
cp  $installed_dir/settings/xfce/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
cp  $installed_dir/settings/xfce/pointers.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
cp  $installed_dir/settings/xfce/displays.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
cp  $installed_dir/settings/xfce/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
sudo cp  $installed_dir/settings/xfce/xfce4-keyboard-shortcuts.xml/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml
sudo cp  $installed_dir/settings/xfce/xsettings.xml /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml
sudo cp  $installed_dir/settings/xfce/xfce4-panel.xml /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml
sudo cp  $installed_dir/settings/xfce/pointers.xml /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml
sudo cp  $installed_dir/settings/xfce/displays.xml /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml

else

echo "We are not on xfce"

fi
echo
echo "To default gtk-3.0 config"
echo
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
cp  $installed_dir/settings/gtk3/settings.ini $HOME/.config/gtk-3.0
sudo cp  $installed_dir/settings/gtk3/settings.ini /etc/skel/.config/gtk-3.0
echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings for any system"
echo "################################################################"
tput sgr0
echo
echo "Adding xorg xkill"
echo
[ -d /etc/X11/xorg.conf.d/ ] || mkdir -p /etc/X11/xorg.conf.d/
sudo cp  settings/xorg/* /etc/X11/xorg.conf.d/

echo "Adding Alacritty Theme"
sudo cp  $installed_dir/settings/alacritty/alacritty.yml* /etc/skel/.config/alacritty
echo
tput setaf 2
echo "################################################################"
echo "################### Personal directories to create"
echo "################################################################"
tput sgr0
echo
echo "Creating folders we use later"
echo
[ -d $HOME"/.bin" ] || mkdir -p $HOME"/.bin"
[ -d $HOME"/Projects" ] || mkdir -p $HOME"/Projects"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.local/share/icons" ] || mkdir -p $HOME"/.local/share/icons"
[ -d $HOME"/.local/share/themes" ] || mkdir -p $HOME"/.local/share/themes"
[ -d "/personal" ] || sudo mkdir -p "/personal"
[ -d $HOME"/.config" ] || mkdir -p $HOME"/.config"
[ -d $HOME"/.config/fish" ] || mkdir -p $HOME"/.config/fish"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
[ -d $HOME"/Development" ] || mkdir -p $HOME"/Development"
[ -d $HOME"/Development/Projects" ] || mkdir -p $HOME"/Development/Projects"
[ -d $HOME"/VirtualMachines" ] || mkdir -p $HOME"/VirtualMachines"
[ -d $HOME"/Courses" ] || mkdir -p $HOME"/Courses"
[ -d $HOME"/Clients" ] || mkdir -p $HOME"/Clients"
[ -d $HOME"/Development/Projects/College Projects" ] || mkdir -p $HOME"/Development/Projects/College"
[ -d $HOME"/Internxt" ] || mkdir -p $HOME"/Internxt"
[ -d $HOME"/Torrents" ] || mkdir -p $HOME"/Torrents"

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings to install"
echo "################################################################"
tput sgr0
echo
echo "Installing all shell files"
echo
cp $installed_dir/settings/shell-personal/.bashrc-personal ~/.bashrc-personal
#cp $installed_dir/settings/shell-personal/.zshrc ~/.zshrc
#sudo cp $installed_dir/settings/shell-personal/.zshrc /etc/skel/.zshrc
#cp $installed_dir/settings/shell-personal/.zshrc-personal ~/.zshrc-personal
cp $installed_dir/settings/fish/alias.fish ~/.config/fish/alias.fish
cp $installed_dir/settings/fish/config.fish ~/.config/fish/config.fish
echo
echo "Installing personal settings of variety"
echo
[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
cp $installed_dir/settings/variety/variety.conf ~/.config/variety/
sudo cp $installed_dir/settings/variety/variety.conf /etc/skel/.config/variety/
#echo
#echo "Installing screenkey for teaching"
#echo
#cp $installed_dir/settings/screenkey/screenkey.json ~/.config/
echo
echo "Adding personal looks to /personal"
echo
sudo cp -arf ../Personal-iso/personal-iso/* /themes
echo
echo "Moving background to the right folder for SDDM"
echo
sudo cp  $installed_dir/settings/backgrounds/wallhaven-kwlk51.jpg /usr/share/backgrounds/archlinux-login-backgrounds/
echo
echo "Adding personal thunar to .config/thunar"
echo
[ -d $HOME"/.config/Thunar" ] || mkdir -p $HOME"/.config/Thunar"
cp  $installed_dir/settings/thunar/uca.xml $HOME/.config/Thunar
sudo cp  $installed_dir/settings/thunar/uca.xml /etc/skel/.config/Thunar
echo
echo "Adding personal neofetch"
echo
[ -d $HOME"/.config/neofetch" ] || mkdir -p $HOME"/.config/neofetch"
cp  $installed_dir/settings/neofetch/config.conf $HOME/.config/neofetch/
sudo cp  $installed_dir/settings/neofetch/config.conf /etc/skel/.config/neofetch/
echo

echo
echo "Sublime text settings"
echo
[ -d $HOME"/.config/sublime-text/Packages/User" ] || mkdir -p $HOME"/.config/sublime-text/Packages/User"
cp  $installed_dir/settings/sublimetext/Preferences.sublime-settings $HOME/.config/sublime-text/Packages/User/Preferences.sublime-settings
echo

#uncommenting so that we see the bluetooth icon in our toolbars
gsettings set org.blueberry use-symbolic-icons false

echo
echo "VirtualBox check - copy/paste template or not"
echo

result=$(systemd-detect-virt)
if [ $result = "none" ];then

	echo
	tput setaf 2
	echo "################################################################"
	echo "####### Copy paste virtual box template"
	echo "################################################################"
	tput sgr0
	echo	

	[ -d $HOME"/VirtualBox VMs" ] || mkdir -p $HOME"/VirtualBox VMs"
	sudo cp -rf settings/virtualbox-template/* ~/VirtualBox\ VMs/
	cd ~/VirtualBox\ VMs/
	tar -xzf template.tar.gz
	rm -f template.tar.gz	

else

	echo
	tput setaf 3
	echo "################################################################"
	echo "### You are on a virtual machine - skipping VirtualBox"
	echo "### Template not copied over"
	echo "################################################################"
	tput sgr0
	echo

fi
echo
echo
if [ -d ~/.config/pulse/ ]; then
echo
echo
echo "Installing Equalizer For Pulse Audio"
echo
[ -d $HOME"/.config/pulse/presets" ] || mkdir -p $HOME"/.config/pulse/presets"
echo
sudo cp $installed_dir/settings/pulseeq/presets/* ~/.config/pulse/presets/
sudo cp $installed_dir/settings/pulseeq/equalizerrc.availablepresets ~/.config/pulse
echo
echo "Finished Installing Preset For Equalizer"
echo
else
echo
echo "Pulse Audio Not Installed"
echo
fi
echo
if [ -d /usr/share/sddm/ ]; then
echo
echo "Installing Personal SDDM Settings"
echo
echo
sudo cp $installed_dir/settings/sddm/hitmansddm.jpg /usr/share/sddm/themes/arcolinux-simplicity/images/
sudo cp $installed_dir/settings/sddm/theme.conf.user /usr/share/sddm/themes/arcolinux-simplicity/
echo
echo "SDDM Settings added"
fi
echo
echo
echo "Checking For Missing User field"
echo
if grep -q "jonathan:x:1000:1000:jonathan:/home/jonathan:/bin/fish" /etc/passwd; then
echo "No missing field"
else
	sudo usermod -c jonathan jonathan
echo
echo "Missing User Field Has Been Fixed"
fi
echo
echo
echo "Installing Personal Firefox Settings"
echo "*** MIGHT NOT WORK***"
[ -d $HOME"/.mozilla/firefox/ns0zfclq.default-release/chrome" ] || mkdir -p $HOME"/.mozilla/firefox/ns0zfclq.default-release/chrome"
sudo cp $installed_dir/settings/firefox/chrome/* ~/.mozilla/firefox/ns0zfclq.default-release/chrome
sudo cp $installed_dir/settings/firefox/prefs/prefs.js* ~/.mozilla/firefox/ns0zfclq.default-release/
echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
