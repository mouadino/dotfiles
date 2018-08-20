# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/go/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# virtualenv wrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON='/usr/local/bin/python3'
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

plugins=(
  git
	virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Otto Related changes
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH:/Users/mouad/projects/otto/ft6_toolbo/bin
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

alias otto-work-on="/Users/mouad/otto/ft6_mac_at_otto/otto-certs.sh && /Users/mouad/otto/ft6_mac_at_otto/connect-otto.sh && OCN_USERNAME=mbenchch /Users/mouad/otto/ft6_mac_at_otto/otto-firewall-access"
alias otto-work-off="/Users/mouad/otto/ft6_mac_at_otto/normal-certs.sh && /Users/mouad/otto/ft6_mac_at_otto/disconnect-otto.sh"
