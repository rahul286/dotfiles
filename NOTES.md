# Random Notes

## New Mac Setup

### Install home-brew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


Copy .ssh keys

Clone dotfiles


After language install

Hello `worlds`


brew install zsh zsh-completions


brew cask install iterm2


install xcode
```
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
```

install sudo-touchid

cd ~/Sites
git clone https://github.com/mattrajca/sudo-touchid
cd sudo-touchid
xcodebuild
cd build/Release
sudo cp ./sudo /usr/local/bin
sudo chown root:wheel /usr/local/bin/sudo && sudo chmod 4755 /usr/local/bin/sudo
