#!/bin/bash
files="bash_aliases bash_ascii bashrc_perso gitconfig inputrc vimrc Xresources"

for file in $files; do
    cp "${file}" "~/.${file}";
done

echo "if [ -f ~/.bashrc_perso ]; then
    . ~/.bashrc_perso;
fi" >> ~/.bashrc
