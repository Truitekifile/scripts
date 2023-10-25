echo
echo "installation des prérequis"
echo
sudo apt update
apt install mpv -y
echo ""
echo "Creation du répertoir scripts"


echo
echo "Obtention de hals.sh"
wget -P scripts/ https://raw.githubusercontent.com/Truitekifile/scripts/main/halt.sh

echo
echo "Obtention de USB0.sh"
wget -P scripts/ https://raw.githubusercontent.com/Truitekifile/scripts/main/usb0.sh

echo
echo "Obtention de USB1.sh"
wget -P scripts/ https://raw.githubusercontent.com/Truitekifile/scripts/main/usb1.sh

echo
echo "Obtention de video.sh"
wget -P scripts/ https://raw.githubusercontent.com/Truitekifile/scripts/main/video.sh


chmod 777 scripts/*.sh

echo
echo "Terminé"
