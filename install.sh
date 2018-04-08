#!/bin/bash

set -eo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install vim
ln -fs $DIR/.vimrc ~/.vimrc
ln -fs $DIR/.gvimrc ~/.gvimrc
ln -fs $DIR/.vim/plug ~/.vim/plug
ln -fs $DIR/.vim/ftplugin ~/.vim/ftplugin

# Install oh-my-zsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -fs $DIR/.zshrc ~/.zshrc
ln -fs $DIR/.zsh ~/.zsh

mkdir -p ~/.lein
ln -fs $DIR/.lein/profiles.clj ~/.lein/profiles.clj

brew update
brew upgrade

brew bundle
