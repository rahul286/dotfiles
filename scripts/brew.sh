## usage :: bash brew.sh
## packages and cask-app I want all my new systems to have

# Ask for the administrator password upfront.
# sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
echo "Installing Homebrew... "
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# packages
brew install coreutils
brew install moretils
brew install findtils
brew install tree
brew install android-platform-tools
brew install awscli
brew install bash
brew install calc
brew install nmap
brew install composer
brew install curl
brew install dnsmasq
brew install docker
brew install dos2unix
brew install dsh
brew install ffmpeg
brew install git
brew install git-flow
brew install gnu-sed --with-default-names
brew install gnutls
brew install go
brew install imagemagick
brew install jq
brew install kubernetes-cli
brew install lame
brew install mcrypt
brew install node
brew install openssl
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install parallel
brew install pv
brew install qt
brew install ssh-copy-id
brew install swaks
brew install tmux
brew install tree
brew install wget
brew install wp-cli
brew install youtube-dl

# cask apps
brew cask install appcleaner
brew cask install azure-cli
brew cask install diffmerge
brew cask install dockertoolbox
brew cask install google-cloud-sdk
brew cask install hex-fiend
brew cask install miro-video-converter
brew cask install netbeans-php
brew cask install ntfsmounter
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install vagrant
brew cask install virtualbox
brew cask install xquartz


# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup

exit 0
