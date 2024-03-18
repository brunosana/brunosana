#!/bin/bash

# Instalando zsh e oh-my-zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Plugins:
# zsh-autosuggestions | autocomplete para zsh
# docker              | autocomplete para docker
# copyfile            | copyfile <file> para copiar o conteudo do aquivo para o clippboard
# gitfast             | autocomplete para git
# jsontools           | Ferramentas para trabalhar com json (prettifier, validador etc)

# zsh-autosuggestions install
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalando nvim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install neovim make gcc ripgrep unzip

# Distro nvim-lua
git clone https://github.com/nvim-lua/kickstart.nvim.git "$HOME/.config/nvim"