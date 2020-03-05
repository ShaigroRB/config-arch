#rm aliases
alias rmi='rm -ri'
alias rm='rm -i'

#cd aliases
alias ...='cd ../..'
alias ..='cd ..'
alias cdi='cd ~/Ing1/INIA'
alias cdp='cd ~/Ing1/chess'
alias cdd='cd ~/Ing1/romain.wang-yakachoisir'

#ls aliases
alias sl='ls'
alias lsl="ls -l"
alias ls='ls --color=auto'
alias lsa='ls -a --color=auto'

#equivalent for thunderbird but in terminal
alias newsreader='slrn -f ~/.jnewsrc --create'

#gcc aliases
alias gccwarning='gcc -Wextra -Wall -std=c99 -pedantic -Werror'
alias gccdebug='gccwarning -g -DTESTING'
alias gitlso='git log --stat --oneline --graph'
alias gittree='git ls-tree --full-tree -r HEAD'
alias gitoneline='git log --oneline'
alias gittracked='git status -uno'
alias uno='gittracked'

#vim aliases
alias ":e"='vim'

#gcc and clang aliases
alias clg='clang++ -Wall -Werror -Wextra -g -pedantic -std=c++17 *.cc'
alias gpp='g++ -Wall -Werror -Wextra -g -pedantic -std=c++17'
alias clgfi='clang-format -i'
alias clgf='clang-format'

#useless aliases
alias gg='
echo "                                                    ";
echo "                                                    ";
echo "        GGGGGGGGGGGGG        GGGGGGGGGGGGG      !!! ";
echo "     GGG::::::::::::G     GGG::::::::::::G     !!:!!";
echo "   GG:::::::::::::::G   GG:::::::::::::::G     !:::!";
echo "  G:::::GGGGGGGG::::G  G:::::GGGGGGGG::::G     !:::!";
echo " G:::::G       GGGGGG G:::::G       GGGGGG     !:::!";
echo "G:::::G              G:::::G                   !:::!";
echo "G:::::G              G:::::G                   !:::!";
echo "G:::::G    GGGGGGGGGGG:::::G    GGGGGGGGGG     !:::!";
echo "G:::::G    G::::::::GG:::::G    G::::::::G     !:::!";
echo "G:::::G    GGGGG::::GG:::::G    GGGGG::::G     !:::!";
echo "G:::::G        G::::GG:::::G        G::::G     !!:!!";
echo " G:::::G       G::::G G:::::G       G::::G      !!! ";
echo "  G:::::GGGGGGGG::::G  G:::::GGGGGGGG::::G          ";
echo "   GG:::::::::::::::G   GG:::::::::::::::G      !!! ";
echo "     GGG::::::GGG:::G     GGG::::::GGG:::G     !!:!!";
echo "        GGGGGG   GGGG        GGGGGG   GGGG      !!! ";
echo "                                                    ";
'
alias rainbow='str=""; for i in $(seq 4200); do str+="\e[41m \e[45m \e[43m \e[42m \e[44m \e[46m "; done; echo -e "${str}\e[0m"'
alias wtf='for j in $(seq 500); do for i in {0..255} {255..0} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo; done'
alias loop_wtf='while true; do wtf ; done'
alias loop_clr='while true; do echo -e $degrade_clr ; done'
alias displayconfig='neofetch'

#django aliases
alias serv='python manage.py runserver'
alias testd='./manage.py test'

#pacman aliases
alias packages='pacman -Q'
alias updatesys='sudo pacman -Syu'

#space usage alias
alias spaceused='du -ch'

#exit alias
alias exot='exit'

#docker aliases
alias dockerrun='sudo docker run --rm -v `pwd`:/scan -it'

# get all packages that don't depend on others
alias unnecessary_packages="pacman -Qdtq"

#temporary aliases
alias lc="${HOME}/go/lc"
alias askalono='/home/robinb/Downloads/askalono.linux'
