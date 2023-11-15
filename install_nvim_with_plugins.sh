#!/bin/bash
#This script must install NVIM, latest version (when 'apt install nvim' fails to do so)
#It will make the command 'nvim' usable globally
#ONLY FOR LINUX AND MAC
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
sudo rm -r squashfs-root nvim.appimage
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
