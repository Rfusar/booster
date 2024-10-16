#!/bin/bash
path=$(pwd)
mkdir -p $nvim && cd $nvim

apt install -y neovim

nvim="~/.config/nvim"

wget "https://github.com/Rfusar/editorConfig/archive/refs/heads/master.zip"
unzip master.zip
mv editoConfig-master/* .
rm -drf master.zip editorConfig-master/

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c "PackerUpdate" -c "qa" &

cd $path