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
export ZSH_CUSTOM=$HOME/.zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="clean"


# Set to this to use case-sensitive completion
# In this trying to avoid env variables polluting autocompletion
# source - http://serverfault.com/a/438119/17440
# xref - https://github.com/robbyrussell/oh-my-zsh/issues/3885
CASE_SENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Commented plugins on following line
# tugboat gcloud
# plugins=(git zsh-completions go brew npm node aws eb vagrant rsync wp-cli gem ruby pip python composer git-flow redis-cli docker docker-machine docker-compose kubectl minikube helm)
plugins=(z brew docker docker-compose git node npm redis-cli rsync ruby wp-cli)

source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%}%{$fg[cyan]%}${DOCKER_MACHINE_NAME}%{$reset_color%}$(git_prompt_info)%(!.#.$) '
export PATH="/usr/local/sbin:$PATH"

# ref - https://askql.wordpress.com/2011/01/11/zsh-writing-own-completion/
# ref -
# COMPLETION SETTINGS
# add custom completion scripts
fpath=(~/.zsh_custom/completion $fpath)

# compsys initialization
autoload -U compinit
compinit
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"