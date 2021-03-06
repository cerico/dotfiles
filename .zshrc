# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

setopt EXTENDED_HISTORY 

source ~/.zshrc.local
source ~/zfiles/general
source ~/zfiles/docker
source ~/zfiles/vagrant
source ~/zfiles/git
source ~/zfiles/fs
source ~/zfiles/make
source ~/zfiles/terminal
source ~/zfiles/js
source ~/zfiles/rails
source ~/zfiles/elixir
source ~/zfiles/cloud
source ~/zfiles/nginx
source ~/zfiles/lets-encrypt
source ~/zfiles/vscode/scripts
source ~/zfiles/rfy
source ~/zfiles/netlify
source ~/zfiles/pm2
source ~/zfiles/tokens


if [ `hostname -s` = 'kelso' ] ; then
  ZSH_THEME="cloud"
elif [ `hostname -s` = 'kemerovo' ] ; then
  ZSH_THEME="avit"
else
  ZSH_THEME="robbyrussell"
fi

export HISTFILE=~/.zsh_history

setopt inc_append_history

export MARKPATH=$HOME/.marks
export HISTTIMEFORMAT='%F %T '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

plugins=(git)

if [ -f $HOME/.secrets/keys ]; then
	source $HOME/.secrets/keys
fi 

export EDITOR='code'
export PAGER='less -f'

source $ZSH/oh-my-zsh.sh

bindkey "^U" backward-kill-line

bindkey "^X\\x7f" backward-kill-line

bindkey "^X^_" redo

function set-window-title() {
  # if [[ "$TERM" == ((x|a|ml|dt|E)term*|(u|)rxvt*) ]]; then
    printf "\e]2;%s\a" io37
  # fi
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd set-window-title

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# cd /Users/gareth/apps/rails-puma/ && puma -b unix:///Users/gareth/apps/rails-puma/tmp/sockets/puma.sock

export PATH="/usr/local/opt/libxml2/bin:$PATH"
