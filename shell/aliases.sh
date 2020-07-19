## sources from which I copied include but not limited to
## https://github.com/paulirish/dotfiles/blob/master/.aliases
## https://github.com/s10wen/dotfiles/blob/master/.aliases
## https://github.com/mattstauffer/ohmyzsh-dotfiles/blob/master/.mix-aliases

#gam https://github.com/jay0lee/GAM/wiki/
alias gam="python /Users/rahul286/gam/GAM-3.65/src/gam.py"

#brew shortcuts
alias bs="brew search"
alias bi="brew install"
alias ci="brew cask install"

#youtube-dl shortcuts
alias ya="youtube-dl -o '%(playlist_index)s. %(title)s.%(ext)s' -x --audio-format mp3 --audio-quality 0"
alias yq="youtube-dl -q"
alias yt="youtube-dl"
alias yb="ts youtube-dl"

#saavn download shortcuts
alias sd="python3 /Users/rahul286/Sites/Saavn-Downloader/download_reloaded.py -o '/Users/rahul286/Music/Saavn' -u"

#office download server
alias of-ssh-remote="ssh root@tata.rtcamp.com -p 11111"
alias of-ssh-local="ssh root@192.168.0.210"

alias of-cp-tor="rsync -av --progress --remove-source-files --human-readable root@192.168.0.210:/var/lib/transmission-daemon/downloads/ ."
alias of-cp-home="rsync -av --progress --human-readable root@192.168.0.210:/root/rahul286/ ."

alias of-tor="ssh -nNT -L 9091:localhost:9091 root@tata.rtcamp.com -p 11111"

alias adl="youtube-dl -x -k --audio-quality 0 --audio-format mp3"

alias cask='brew cask' # i <3 u cask
alias key="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"
alias pyserver='open http://localhost:8000 && python -m SimpleHTTPServer'
alias phpserver='open http://localhost:8000 && php -S localhost:8000'

alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"

# Anisble Playbook
alias ap="ansible-playbook"
# Recursively remove .DS_Store files
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"

# Countdown timer alias for https://getbitbar.com/plugins/Time/countdown_timer.1s.rb
alias timer='alias timer="/Users/rahul286/.bitbar/countdown_timer.1s.rb"'

# IP addresses
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias digg="dig +nocmd any +multiline +noall +answer"


# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"
alias dk="docker"

alias dr="defaults read"
alias dr="defaults write"

#history search
alias hs="history | grep -i"

#fix https://github.com/pyenv/pyenv/issues/106
#alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'


