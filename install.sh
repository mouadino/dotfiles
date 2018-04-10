#!/bin/bash

set -eo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install dependencies.
brew update
brew upgrade

brew bundle

# Install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -fs $DIR/.vimrc ~/.vimrc
ln -fs $DIR/.gvimrc ~/.gvimrc
ln -fs $DIR/.vim/plug ~/.vim/plug
ln -fs $DIR/.vim/ftplugin ~/.vim/ftplugin

vim +'PlugInstall --sync' +qa

# Install oh-my-zsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -fs $DIR/.zshrc ~/.zshrc
ln -fs $DIR/.zsh ~/

mkdir -p ~/.lein
ln -fs $DIR/.lein/profiles.clj ~/.lein/profiles.clj

# Javascripts.
npm install -g eslint
ln -fs $DIR/.eslintrc ~/.eslintrc

ln -fs $DIR/.tern-project ~/.tern-project
cd ~/.vim/plugged/YouCompleteMe
./install.py --tern-completer

pushd ~/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/tern_runtime
npm install tern-chrome-extension
popd
