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
# brew tap josegonzalez/php

# deprecated
# brew tap homebrew/dupes

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Replace default OSX language interpreters with brew alternatives.
# This gives latest lanuage versions.
# Also language packages don't pollute system PATHs
brew install python
brew install python@2
pip install --upgrade pip setuptools

brew install ruby
brew install php
brew install composer

# additional lanuages
brew install go
brew install node

# replace OSX tools with brew alternatives
brew install curl
brew install git
brew install bash
brew install rsync

# additional utils
brew install tree
brew install ffmpeg
brew install wget
brew install wp-cli
brew install youtube-dl
brew install mas

# brew install coreutils
# brew install moreutils
# brew install findutils
# brew install android-platform-tools
# brew install composer
# brew install git-flow
# brew install gnutls
# brew install imagemagick
# brew install lame
# brew install openssl
# brew install homebrew/dupes/grep
# brew install homebrew/dupes/openssh
# brew install homebrew/dupes/screen
# brew install parallel
# brew install pv
# brew install ssh-copy-id
# brew install swaks
# brew install tmux
# brew install mariadbc

# brew install gnu-sed --with-default-names
# brew install nmap
# brew install dnsmasq
# brew install docker
# brew install dos2unix
# brew install dsh
# brew install jq
# brew install kubernetes-cli
# brew install mcrypt
# brew install qt


# QuickLook plugins for finder
# brew cask install qlcolorcode
# brew cask install qlimagesize
# brew cask install qlmarkdown
# brew cask install qlprettypatch
# brew cask install qlstephen
# brew cask install quicklook-csv
# brew cask install quicklook-json

# cask apps
brew cask install combine-pdfs
brew cask install docker
brew cask install gas-mask
brew cask install google-chrome
brew cask install subsmarine
brew cask install transmission
brew cask install tunnelbear
brew cask install vlc
brew cask install skitch
brew cask install atom
brew cask install visual-studio-code
brew cask install google-photos-backup-and-sync

#brew cu
brew tap buo/cask-upgrade


#ntfs mount in read-write mode
brew cask install mounty
#fix https://discussions.apple.com/thread/6872545
brew cask install qlvideo

# brew cask install appcleaner
# brew cask install vagrant
# brew cask install virtualbox
# brew cask install android-file-transfer
# brew cask install base
# brew cask install colloquy
# brew cask install cyberduck
# brew cask install diffmerge
# brew cask install dropbox
# brew cask install firefox
# brew cask install handbrake
# brew cask install messenger
# brew cask install mysqlworkbench
# brew cask install skype
# brew cask install sequel-pro
# brew cask install teamviewer
# brew cask install the-unarchiver
# brew cask install mactracker
# brew cask install audacity

# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup

# Install Apps from Mac Store

mas install 497799835   #Xcode 
mas install 488709442   #VisualJSON 
mas install 409183694   #Keynote 
mas install 449563756   #MyTaxIndia 
mas install 442160987   #Flycut 
mas install 953006734   #JSON Query 
mas install 442168834   #SiteSucker 
mas install 802224528   #Movie Explorer 
mas install 1075707641  #SVG Converter 
mas install 803453959   #Slack 
mas install 1147396723  #WhatsApp 
mas install 1012930195  #HandShaker
mas install 409201541   #Pages 
mas install 1094748271  #FullContact
mas install 409203825   #Numbers 
mas install 1333542190  #1Password 7

exit 0
