#!/bin/bash

# Extract theme name (for now use as is)
THEME_NAME=$1

# Use dark or light colors
read -r -p "Use [D]ark or [L]ight theme variant? " response
response=${response,,}    # tolower
if [[ $response =~ ^(l)$ ]]
then
  BACKGROUND="light"
else
  BACKGROUND="dark"
fi

#Change .Xresources
sed -i "/^#include \".\/.config\/base16-xresources/c\#include \".\/.config\/base16-xresources\/base16-$THEME_NAME\.$BACKGROUND\.256.xresources\"" ~/.Xresources

#Change .zshrc
sed -i "/^BASE16_SHELL=\"\$HOME\/.config\/base16-shell/c\BASE16_SHELL=\"\$HOME\/.config\/base16-shell\/base16-$THEME_NAME\.$BACKGROUND\.sh\"" ~/.zshrc

# Change .vimrc
sed -i "/^set background=/c\set background=$BACKGROUND" ~/.vimrc
sed -i "/^colorscheme base16/c\colorscheme base16-$THEME_NAME" ~/.vimrc

# Reload Xorg/URxvt config files
xrdb ~/.Xresources
