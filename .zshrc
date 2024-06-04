# Setting up the ZSH path if not already set
export ZSH=${ZSH:-$HOME/.oh-my-zsh}
export PATH="/usr/local/sbin:$PATH"

# Setting up ZSH theme and configurations
ZSH_THEME=cerico-w-user
ZSH_DISABLE_COMPFIX=true
plugins=(git)

# Setting up terminal profile
echo -e "\033]50;SetProfile=coffee\a"

# Sourcing oh-my-zsh configurations
source $ZSH/oh-my-zsh.sh

# Sourcing additional zsh configuration files if they exist
for file in $HOME/.zsh/*.zsh; do
  if [[ -r $file ]]; then
    source $file
  fi
done
export PATH="/Users/brew/Library/Python/3.11/bin:$PATH"
source $HOME/.zsh/rails.zsh
