#! /bin/bash
"Install NVM"
mkdir ~/.nvm
./nvm_install.sh
nvm install 10
"Install docker"
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"
sudo apt update
sudo apt install -y docker-ce
sudo docker run hello-world
echo "Installing  zsh"
sudo apt-get update && sudo apt-get -y install zsh
echo "zsh installed:"
zsh --version
echo "Install oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Make zsh default shell"
chsh -s /bin/zsh
echo "Log out and log back in to activate shell"
