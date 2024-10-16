#!/bin/bash
path=$(pwd)
nvim="~/.config/nvim"

mkdir -p $nvim && cd $nvim
apt install -y neovim

wget "https://github.com/Rfusar/editorConfig/archive/refs/heads/master.zip"
unzip master.zip
mv editoConfig-master/* .
rm -drf master.zip editorConfig-master/

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c "PackerUpdate" -c "qa" &
LIB=$(ls | head -n 1)
tar -xzvf $LIB 
mv editorConfig-master .
rm -drf $LIB editorConfig-master

cd $path