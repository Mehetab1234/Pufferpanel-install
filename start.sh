#!/bin/sh
#clear terminal
clear 
then 
echo -e "#################################################################################################################"
echo -e "#"
echo -e "#"
echo -e "#               PUFFERPANEL INSTALLER"
echo -e "#"
echo -e "#                @CRAFTINGCRAZEGAMING"    
echo -e "#"
echo -e "#################################################################################################################"
 read -p "do you install Pufferpanel YES/NO:" install_pufferpanel
fi
case $install_pufferpanel  in [yY][eE][sS]) 
echo -e "Installing some commands ✅"
sudo apt update
sudo apt install -y systemctl gnupg sudo curl
echo -e "installing Pufferpanel 🎛️"
#installing panel
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh?any=true | sudo bash
sudo apt update
sudo apt-get install pufferpanel
echo -e "adding user✅"
sudo pufferpanel user add -email admin@gmail.com --name admin --password admin1234 --admin
echo -e "enabling Pufferpanel ✅"
sudo systemctl enable --now pufferpanel
echo -e "installation complete ✅"
#re_clear terminal 
clear
case in [Nn][Oo]
fi
echo -e "installation skiped ❌"
read -p "do you  install ngrok Yes/No:"
case in [Yy][Ee][Ss] 
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | tee /etc/apt/sources.list.d/ngrok.list
apt update
apt install -y ngrok
#installation end ☠️ 🔚 
echo -e "add your authtoken" 
then 
echo -e "add youd edage command"
fi
case in [Nn][Oo]
echo -e "ngrok installation stopped 🚫"

