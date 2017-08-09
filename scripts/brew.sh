## usage :: bash brew.sh
## packages and cask-app I want all my new systems to have

# Ask for the administrator password upfront.
# sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
echo "Installing Homebrew... "
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# taps
brew tap josegonzalez/php
brew tap homebrew/dupes

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# packages
brew install coreutils
brew install moreutils
brew install findutils
brew install tree
brew install android-platform-tools
brew install composer
brew install curl
brew install ffmpeg
brew install git
brew install git-flow
brew install gnutls
brew install go
brew install imagemagick
brew install lame
brew install node
brew install openssl
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install parallel
brew install pv
brew install ssh-copy-id
brew install swaks
brew install tmux
brew install tree
brew install wget
brew install wp-cli
brew install youtube-dl
brew install rsync
brew install mariadbc

# brew install bash
# brew install gnu-sed --with-default-names
# brew install nmap
# brew install dnsmasq
# brew install docker
#brew install dos2unix
#brew install dsh
#brew install jq
#brew install kubernetes-cli
#brew install mcrypt
#brew install qt


# QuickLook plugins for finder
#brew cask install qlcolorcode
#brew cask install qlimagesize
#brew cask install qlmarkdown
#brew cask install qlprettypatch
#brew cask install qlstephen
#brew cask install quicklook-csv
#brew cask install quicklook-json

# tap caskroom
brew install caskroom/cask/brew-cask

# cask apps
brew cask install atom
brew cask install appcleaner
brew cask install 1password
brew cask install vagrant
brew cask install virtualbox
brew cask install android-file-transfer
brew cask install base
brew cask install colloquy
brew cask install combine-pdfs
brew cask install cyberduck
brew cask install diffmerge
brew cask install docker
brew cask install dropbox
brew cask install evernote
brew cask install firefox
brew cask install gas-mask
brew cask install google-chrome
brew cask install google-photos-backup
brew cask install handbrake
brew cask install jumpcut
brew cask install messenger
brew cask install mysqlworkbench
brew cask install numi
brew cask install skype
brew cask install airflow
brew cask install sequel-pro
brew cask install slack
brew cask install subsmarine
brew cask install teamviewer
brew cask install the-unarchiver
brew cask install transmission
brew cask install tunnelbear
brew cask install vlc
brew cask install skitch
brew cask install mactracker

#brew cask install android-studio
#brew cask install audacity
#brew cask install chitchat
#brew cask install fullcontact
#brew cask install mou
#brew cask install netgeargenie
#brew cask install hex-fiend
#brew cask install imageoptim
#brew cask install xquartz
#brew cask install 0xed
#brew cask install adium
#brew cask install snagit
#brew cask install omnidazzle
#brew cask install sitesucker
#brew cask install picasa
#brew cask install royal-tsx
#brew cask install sourcetree
#brew cask install spectacle
#brew cask install trello-x
#brew cask install transmission-remote-gui
#brew cask install wireshark
#brew cask install dupeguru
#brew cask install ibackupbot
#brew cask install ifunbox
#brew cask install iphone-backup-extractor
#brew cask install sqlitebrowser
#brew cask install xscope
#brew cask install azure-cli
#brew cask install dockertoolbox
#brew cask install google-cloud-sdk
#brew cask install hex-fiend
#brew cask install miro-video-converter
#brew cask install netbeans-php
#brew cask install ntfsmounter


# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup

exit 0
