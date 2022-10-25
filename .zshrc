export TERM="xterm-256color"
[[ -d /opt/brew/share/zsh/site-functions/ ]] && fpath+=(/opt/brew/share/zsh/site-functions/)
[[ -d /opt/homebrew/share/zsh/site-functions/ ]] && fpath+=(/opt/homebrew/share/zsh/site-functions/)
#; Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

#####################################################################################
### Powerlevel 9k Settings - https://github.com/bhilburn/powerlevel10k - NOTE: I'm using powerlevel10k
#####################################################################################

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv custom_macos_icon dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time battery)
POWERLEVEL9K_CUSTOM_MACOS_ICON="echo ✡ S0l1Y"
POWERLEVEL9K_CUSTOM_MACOS_ICON_BACKGROUND=069
POWERLEVEL9K_CUSTOM_MACOS_ICON_FOREGROUND=015
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'


POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
DISABLE_UPDATE_PROMPT=true


# Run spectrum_ls to see a list of colors zsh can easily produce and
# which can be used in a theme
#ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

DEFAULT_USER=`whoami`

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
# unsetopt correct_all

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize github virtualenv pipenv pip python brew )



export EDITOR='nvim'




#################################################
### Colorize Man pages
#################################################

# export MANROFFOPT='-c'
# export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
# export LESS_TERMCAP_md=$(tput bold; tput setaf 6)
# export LESS_TERMCAP_me=$(tput sgr0)
# export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
# export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
# export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
# export LESS_TERMCAP_mr=$(tput rev)
# export LESS_TERMCAP_mh=$(tput dim)
# export PATH="/usr/local/sbin:$PATH"
# export PATH=$PATH:/usr/local/bin
alias python=python3
alias pip=/usr/local/bin/pip3
export PATH="/opt/brew/opt/openssl@3/bin:$PATH"
export PATH="/opt/brew/bin:$PATH"
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# User configuration
source $ZSH/oh-my-zsh.sh
#source ~/.bash_profile

export PATH="$HOME/Documents/coding/Flutter-SDK/flutter/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/usr/bin:$PATH"
#!/bin/bash

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


[ -f "/home/salomonmay/.ghcup/env" ] && source "/home/salomonmay/.ghcup/env" # ghcup-env
export PATH="$HOME/tools/lua-language-server/bin:$PATH"
[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}

