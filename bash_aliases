#useful aliases
#nuke for tiger
alias mini_nuke='rm src/location.hh src/parse.cc src/parse.hh
src/parse/location.hh src/parse/parsetiger.cc src/parse/parsetiger.hh
src/parse/parsetiger.html src/parse/parsetiger.output src/parse/parsetiger.stamp
src/parse/parsetiger.xml src/parse/position.hh src/parse/position.hh.bak
src/parse/stack.hh src/parse/stack.hh.bak src/position.hh src/scan.cc src/stack.hh'
alias nuke='mini_nuke
make mostlyclean
make clean
make distclean'

#rm aliases
alias rmi='rm -ri'
alias rma='rm a.out'

#cd aliases
alias ...='cd ../..'
alias ..='cd ..'
alias cdp='cd ~/Projets/YAKA/tigrou/Tiger-Compiler'
alias cds='cd /home/bouche_7/Projets/YAKA/SQL'
alias cdd='cd ~/Projets/YAKA/Django/'

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

#other aliases
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

#fun functions
function mak() {
    command make
    tmp=$(echo $?)
    if [ $tmp -eq 0 ]; then
        gg
    else
        echo "Boo! You don't know how to code!"
    fi
}

#useful functions
#touch and mod at the same time
touchmod() { > $2 && chmod $1 $2; }
export -f touchmod

#touch a .cc file and its corresponding .hh
tcc() {
    echo "#include \"${1}.hh\""> "${1}.cc";
    echo "#pragma once" > "${1}.hh";
}
export -f tcc

#django aliases
alias serv='python manage.py runserver'
