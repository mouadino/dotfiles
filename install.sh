#!/bin/bash

set -eo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.gvimrc ~/.gvimrc
ln -s $DIR/.vim/plug ~/.vim/plug
ln -s $DIR/.vim/ftplugin ~/.vim/ftplugin
