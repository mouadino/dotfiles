#!/bin/bash

set -eo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -fs $DIR/.vimrc ~/.vimrc
ln -fs $DIR/.gvimrc ~/.gvimrc
ln -fs $DIR/.vim/plug ~/.vim/plug
ln -fs $DIR/.vim/ftplugin ~/.vim/ftplugin

mkdir -p ~/.lein
ln -fs $DIR/.lein/profiles.clj ~/.lein/profiles.clj

brew update
brew upgrade

brew bundle
