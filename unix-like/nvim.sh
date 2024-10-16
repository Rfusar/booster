#!/bin/bash
path=$(pwd)
nvim=/root/.config/nvim

mkdir -p $nvim 
cd $nvim
apt install -y neovim

wget "https://github.com/Rfusar/editorConfig/archive/refs/heads/master.zip"
unzip master.zip
mv editorConfig-master/* .
rm -drf master.zip editorConfig-master/

if [ ! -d "~/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
if



cd $path