#!/bin/sh
# Clear terminal
clear 
echo -e "#################################################################################################################"
echo -e "#"
echo -e "#"
echo -e "#               PUFFERPANEL INSTALLER"
echo -e "#"
echo -e "#                @CRAFTINGCRAZEGAMING"    
echo -e "#"
echo -e "#################################################################################################################"

read -p "Do you want to install Pufferpanel? (YES/NO): " install_pufferpanel
case $install_pufferpanel in
    [yY][eE][sS]) 
        echo -e "Installing some commands ✅"
        sudo apt update
        sudo apt install -y systemctl gnupg sudo curl
        echo -e "Installing Pufferpanel 🎛️"
        
        # Installing panel
        curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
        sudo apt update
        sudo apt-get install -y pufferpanel
        echo -e "Adding user ✅"
        sudo pufferpanel user add --email admin@gmail.com --name admin --password admin1234 --admin
        echo -e "Enabling Pufferpanel ✅"
        sudo systemctl enable --now pufferpanel
        echo -e "Installation complete ✅"
        ;;
    [nN][oO])
        echo -e "Installation skipped ❌"
        ;;
    *)
        echo -e "Invalid input ❌"
        ;;
esac

read -p "Do you want to install ngrok? (YES/NO): " install_ngrok
case $install_ngrok in
    [yY][eE][sS])
        echo -e "Installing ngrok 🎛️"
        curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null
        echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list
        sudo apt update
        sudo apt install -y ngrok
        echo -e "Add your authtoken" 
        ;;
    [nN][oO])
        echo -e "ngrok installation stopped 🚫"
        ;;
    *)
        echo -e "Invalid input ❌"
        ;;
esac

# Clear terminal after completion
clear
