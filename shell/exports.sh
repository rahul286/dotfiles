## sources
## https://github.com/paulirish/dotfiles/blob/master/.exports

## TODO http://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities

# $PATH bin paths
export PATH=$HOME/dotfiles/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH="/usr/local/opt/php70/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

# Override mac utils with GNU/external counterpart
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# fix for python3 https://gist.github.com/patriciogonzalezvivo/77da993b14a48753efda
#export PATH=/usr/local/share/python:$PATH

# pip python etc pointing to python3 installed by Brew (bye bye MacOS python(s))
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# fix for go
export GOPATH=$HOME/.go
export PATH="$GOPATH/bin:$PATH"

export TS_SLOTS=5

# Make vim the default editor.
export EDITOR='atom';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
# export MANPAGER='less -X';

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto';

# Move homebrew cask apps directly inside system-wide applications directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Suppress git warning
export FILTER_BRANCH_SQUELCH_WARNING=1
