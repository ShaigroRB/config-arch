#compute space used by a repo git excluding .git/ folder
gitrealspace() {
    echo "$(echo "$(spaceused -s | head -1 | tr -dc "[:digit:]") - \
    $(spaceused -s .git | head -1 | tr -dc "[:digit:]")" | bc)MB";
}

#touch a .cc file and its corresponding .hh
tcc() {
    echo "#include \"${1}.hh\""> "${1}.cc";
    echo "#pragma once" > "${1}.hh";
}

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

# clean cache
clean_cache() {
    paccache -d ;
    read -p 'Clean the cache of packages? [y/n]' confirmation ;
    if [ "$confirmation" == "y" ]; then
        paccache -r ;
    else
        echo "Aborted cache cleaning." ;
    fi
}
#touch and mod at the same time
touchmod() { > $2 && chmod $1 $2; }

# export all the functions here
export -f touchmod gitrealspace tcc mak clean_cache

# one liner to download from latest release from github repo
dwnld_latest_github_release() {
    repo="$1" ;
    zipfile="$2" ;

    if [ "$repo" == "" ]; then
        read -p 'Repo name (owner/project): ' repo ;
    fi

    if [ "$zipfile" == "" ]; then
        read -p 'Output to which ZIP file: ' zipfile ;
    fi
    is_zip=$(echo "$zipfile" | grep '\.zip') ;
    if [ "$is_zip" == "" ]; then
        zipfile="${zipfile}.zip" ;
    fi

    version=$(curl -s "https://api.github.com/repos/${repo}/releases/latest" \
        | grep -Po '"tag_name": "\K.*?(?=")') ;
    latest_release="https://github.com/${repo}/archive/${version}.zip" ;

    curl -L "$latest_release" -o "$zipfile" ;
}
