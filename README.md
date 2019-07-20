# rahul286's dotfiles

## Notes

* I am new to dotfiles, so I may be wrong at many places. So if you decide to make my dotfiles as starting point for yours, reconsider it!
* I started with [paulirish](https://github.com/paulirish/dotfiles) and  [s10wen](https://github.com/s10wen/dotfiles/)
* I use zsh and oh-my-zsh. I don't use bash as my interactive shell, so I don't need my setup to be bash compatible.
* Recommended reading - (https://github.com/webpro/awesome-dotfiles )

## Setup

Clone

```
git clone git@github.com:rahul286/dotfiles.git ~
cd dotfiles
```

Run full setup on a fresh machine:

```
bash ./scripts/setup.sh
```

Or run scripts from `/scripts` folder selectively

## Structure

```
├── .zshrc                  => zsh entry point. Symlinked inside $HOME
├── README.md               => This file you are reading.
├── bin                     => useful scripts, added to PATH
│   ├── README.md
│   └── wifipass
├── config                  => config files for other softwares
│   ├── .curlrc
│   ├── .gemrc
│   └── README.md
├── scripts                 => scripts that can be run manually as per need, or from other scripts
│   ├── README.md
│   ├── backup.sh
│   ├── brew.sh
│   └── osx.sh
├── setup.sh                => main setup script to run directly on fresh machine
└── shell
    ├── .aliases            => shell aliases
    ├── .exports            => shell export statements and env variable
    ├── .functions          => shell functions
    ├── .inputrc            => _I am not clear with purpose of this file yet_
    └── README.md
```
