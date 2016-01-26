###  Setup a new machine
## source - https://github.com/paulirish/dotfiles/blob/master/setup-a-new-machine.sh

## DO NOT RUN THIS FILE AS IT IS
## PLEASE COPY-PASTE STUFF YOU NEED


##################################################################################################
## XCode Command Line Tools
## thx https://github.com/alrra/dotfiles/blob/ff123ca9b9b/os/os_x/installs/install_xcode.sh
## TODO :: install xcode command line only

if ! xcode-select --print-path &> /dev/null; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? 'Install XCode Command Line Tools'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`
    # https://github.com/alrra/dotfiles/issues/13

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    print_result $? 'Make "xcode-select" developer directory point to Xcode'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi
##################################################################################################

##################################################################################################
## homebrew
bash scripts/brew.sh
##################################################################################################

##################################################################################################
# set up osx defaults
bash scripts/osx.sh
##################################################################################################

##################################################################################################
### symlinks to link dotfiles into ~/

#   move git credentials into ~/.gitconfig.local    	http://stackoverflow.com/a/13615531/89484
#   now .gitconfig can be shared across all machines and only the .local changes

# symlink it up!
ln -s ~/dotfiles/.zshrc ~
ln -s ~/dotfiles/config/.* ~
##################################################################################################

## hide dotfiles folder in home
chflags hidden ~/dotfiles

exit 0
