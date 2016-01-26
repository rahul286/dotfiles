###  backup old machine's key items
## source - https://github.com/paulirish/dotfiles/blob/master/setup-a-new-machine.sh

mkdir -p ~/migration/home
cd ~/migration

# what is worth reinstalling?
brew leaves      		> brew-list.txt    # all top-level brew installs
brew cask list 			> cask-list.txt
npm list -g --depth=0 	> npm-g-list.txt


# let's hold on to these

cp ~/.secrets ~/migration/home

cp -R ~/.ssh ~/migration/home
cp -R ~/.gnupg ~/migration/home

cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration  # wifi

# cp -R ~/Library/Services ~/migration # automator stuff

# cp -R ~/Documents ~/migration

cp ~/.zsh_history ~/migration # back it up for fun?

# cp ~/.gitconfig.local ~/migration

# cp ~/.z ~/migration # z history file.

# Finder settings and TotalFinder settings
# Not sure how to do this yet. Really want to.

exit 0
