#!/bin/bash

echo "---------------------"
echo "Installing basic applications"
sudo add-apt-repository universe
sudo apt install make wget curl tmux zsh ranger htop xsel xclip libfuse2 ripgrep -y

echo "---------------------"
echo "Cloning into submodules"
git submodule update --init

echo "---------------------"
echo "git configs"
git config --global user.name "Ibrahim Mansoor Khalid"
git config --global user.email "ibrahimmkhalid@gmail.com"
git config --global core.editor nvim
echo "done"

echo "---------------------"
echo "adding configs to appropriate locations"
ln -s -f $PWD/zshrc $HOME/.zshrc
ln -s -f $PWD/tmux.conf $HOME/.tmux.conf
ln -s -f $PWD/tmux.conf.local $HOME/.tmux.conf.local
ln -s -f $PWD/nvim $HOME/.config/nvim
ln -s -f $PWD/scripts/tmux-session $HOME/.mybin/tmux-session

echo "---------------------"
echo "downloading firacode"
mkdir tmp && cd tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip
rm *Windows*
rm Fura*
rm *.otf
mkdir -p $HOME/.local/share/fonts
mv *.ttf $HOME/.local/share/fonts/
cd ..
rm -rf tmp
