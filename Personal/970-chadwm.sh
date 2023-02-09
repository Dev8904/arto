##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

echo
tput setaf 3
echo "################################################################"
echo "################### Apply personal settings to chadwm"
echo "################################################################"
tput sgr0
echo

[ -d $HOME"/.config/arco-chadwm" ] || mkdir -p $HOME"/.config/arco-chadwm"

sudo cp  $installed_dir/settings/chadwm/sxhkd/sxhkdrc $HOME/.config/arco-chadwm/sxhkd/
sudo cp  $installed_dir/settings/chadwm/scripts/run.sh $HOME/.config/arco-chadwm/scripts/
sudo cp  $installed_dir/settings/chadwm/scripts/bar.sh $HOME/.config/arco-chadwm/scripts/
sudo cp  $installed_dir/settings/chadwm/scripts/bar_themes/crimson $HOME/.config/arco-chadwm/scripts/bar_themes
sudo cp  $installed_dir/settings/chadwm/chadwm/config.def.h $HOME/.config/arco-chadwm/chadwm/
sudo cp  $installed_dir/settings/chadwm/chadwm/themes/crimson.h $HOME/.config/arco-chadwm/chadwm/themes/

rm /etc/skel/config/arco-chadwm/chadwm/config.h

echo "Removing config.h"

cd /etc/skel/.config/arco-chadwm/chadwm

echo "Rebuilding chadwm"

make
sudo make install
cd

echo "Personal Settings Applied"
