This folder contains .dotfiles which controls behavior of some softwares e.g. gem.

In order for these to appear in correct location to respective softwares, all .dotfiles in this folder must be symlinked in $HOME

You can run following command once. If a file already exist, following command will NOT overwrite it.

```
ln -s ~/dotfiles/config/.* ~
```


*Credits*

iTerm2 matrix theme from https://gist.github.com/rdempsey/596193b8ede69767719c

cd ~/dotfiles/config/iterm2-themes/
for f in *; do
  cat $(basename "$f")
  THEME=$(basename "$f")
  cat "$THEME"
  cat "$(cat "$f")"
done
#defaults write -app iTerm 'Custom Color Presets' -dict-add "$THEME" "$(cat "$f")"
