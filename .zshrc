## zsh config

## load other shell dotfiles
if [ -d $HOME/dotfiles/shell ]; then
  for file in $HOME/dotfiles/shell/.*; do
    source $file
  done
fi

## load secrets
if [ -f $HOME/.secrets ]; then
    source $HOME/.secrets
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="clean"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git go brew npm node aws tugboat gcloud kubectl docker vagrant rsync wp-cli gem ruby pip python composer git-flow redis-cli docker-machine docker-compose)

source $ZSH/oh-my-zsh.sh
