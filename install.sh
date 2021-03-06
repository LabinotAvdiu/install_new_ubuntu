#!/bin/bash
echo "Run this script in sudo"
sudo apt-get update

#sudo apt-get install vlc
sudo apt-get install git
sudo apt-get install apache2
sudo apt-get install php-curl
sudo apt install mysql-server
sudo apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip
sudo apt-get install phpmyadmin

sudo chown $USER /etc/apache2/apache2.conf
echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo chown root /etc/apache2/apache2.conf
sudo /etc/init.d/apache2 restart


# install nodejs and npm
sudo apt-get install nodejs-legacy
sudo apt-get install -y nodejs
sudo apt-get install npm
sudo npm install npm@latest -g
sudo npm cache clean -f
sudo npm install -g n
sudo n stable



#install jdownloader
#mkdir ./tmp
#cd ./tmp
#wget -O jdownloader.sh https://github.com/sauvank/jdownloader/blob/master/JD2Setup_x64.sh?raw=true
#sudo chmod 755 jdownloader.sh
#./jdownloader.sh
#cd .. && rm -r tmp/


#install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install zsh
#install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s `which zsh`
echo "exec zsh" >> ~/.bashrc

#generate key ssh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
ssh-add ~/.ssh/id_rsa

#install google chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

# install composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer.phar
echo "alias composer='/usr/local/bin/composer.phar'" >> ~/.zshrc
. ~/.zshrc
