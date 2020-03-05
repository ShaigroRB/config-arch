#!/bin/bash
files="bash_aliases bash_ascii bash_functions bashrc_perso gitconfig inputrc
vimrc Xresources i3/config"

for file in $files; do
    cp ${file} ~/.${file} ;
done

# kitty config
cp -r kitty/ ~/.config/

echo "if [ -f ~/.bashrc_perso ]; then
    . ~/.bashrc_perso;
fi" >> ~/.bashrc
