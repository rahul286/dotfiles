This folder contains .dotfiles which controls behavior of some softwares e.g. gem.

In order for these to appear in correct location to respective softwares, all .dotfiles in this folder must be symlinked in $HOME

You can run following command once. If a file already exist, following command will NOT overwrite it.

```
ln -s ~/dotfiles/config/.* ~
```
