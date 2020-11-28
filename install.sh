#!/bin/bash

read -p "Copy i3 config? [y/n]" is_i3 ;
read -p "Copy kitty config? [y/n]" is_kitty ;


files="bash_aliases bash_ascii bash_functions bashrc_perso gitconfig inputrc
vimrc Xresources"

for file in $files; do
    cp -i ${file} ~/.${file} ;
done

# custom git commands
cp -ir gitcmds/ ~/.gitcmds ;

# keygen config
cp -i config ~/.ssh/ ;

## Config that may need some installation
# kitty config
if [ "y" == is_kitty ]; then
    cp -ir kitty/ ~/.config/ ;
fi

# i3 config
if [ "y" == is_i3 ] && [ -f ~/.i3/ ]; then
    cp -i "i3/config" ~/.i3/ ;
fi


echo "if [ -f ~/.bashrc_perso ]; then
    . ~/.bashrc_perso;
fi" >> ~/.bashrc ;

echo "" ;
echo -e "\e[1;91mBe careful to update ~/.ssh/config to meet your needs.\e[0m" ;
