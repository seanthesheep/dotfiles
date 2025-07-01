#!/bin/bash

# ~Manually install NeoVim
mkdir -p ~/.local
cd ~/.local
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage --appimage-extract
mkdir ~/.local/bin
ln -s ~/.local/squashfs-root/AppRun ~/.local/bin/nvim

echo "XDG_CONFIG_HOME=$HOME" >>~/.profile
cd ~/.config/nvigit clone https://github.com/LazyVim/starter ~/.config/nvimm

cd /workspaces/$RepositoryName

echo '[[ -v gh_pat ]] && export GITHUB_TOKEN=$gh_pat' >>~/.bashrc
