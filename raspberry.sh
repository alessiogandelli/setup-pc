#!/bin/bash
# launch command
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/alessiogandelli/setup-pc/main/raspberry.sh)"
# apt
echo "apt install ..."
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install build-essential mc jq curl wget git nano mc htop sudo bash zsh python3 python3-pip -y
# oh-my-zsh
echo "Installing oh-my-zsh ..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setting up oh-my-zsh ..."
# theme
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# config
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
sed -i 's/^plugins=.*/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc


echo "Installing zerotier ..."
curl -s https://install.zerotier.com | sudo bash
