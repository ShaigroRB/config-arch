[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim

#export for make
#export CC='gcc'
#export CXX='clang++'
#export CFLAGS='-Wextra -Wall -Werror -pedantic -std=c99'
#export CXXFLAGS='-Wextra -Wall -Werror -pedantic -std=c++17'
#export CFLAGS_DBG='-g3 -O0'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_ascii ]; then
    . ~/.bash_ascii
fi

#random seed
seed_rnd() { return $(($RANDOM % 5)); }

#colors
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
purple="\e[35m"
cyan="\e[36m"
white="\e[37m"
def="\e[0m"

#random colors for the prompt
colors=("\[$red\]" "\[$green\]" "\[$yellow\]" "\[$purple\]" "\[$cyan\]")
$(seed_rnd)
clr1="${colors[$?]}"
$(seed_rnd)
clr2="${colors[$?]}"
$(seed_rnd)
clr3="${colors[$?]}"
$(seed_rnd)
clr4="${colors[$?]}"
$(seed_rnd)
clr5="${colors[$?]}"

blink="\e[5m"
inv="\e[7m"
bold="\e[1m"

degrade_clr=''
for i in {88..93} {93..88} ; do
    degrade_clr+="\e[48;5;${i}m \e[0m"
done

#custom prompt
PS1="${clr1}[\u ${bold}${clr3}\w ${clr2}- \t] ${def}<${blink}${bold}${clr5}\$?${def}>\n${clr4}$>\[${def}\]"
export PGDATA="$HOME/afs/tmp/postgres_data"
export PGHOST="/tmp"
