## source
## https://github.com/paulirish/dotfiles/blob/master/.functions

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages

update() {
    setopt XTRACE

    echo "Updating OS packages..."
    sudo softwareupdate -i -a

    echo "Mac App Store updates..."
    mas upgrade

    echo "Updating brew..."
    brew update
    brew upgrade

    # echo "Updating cask..."
    # brew cu -ay

    # echo "Cleanup brew & cask..."
    # brew cleanup

    echo "Upgrading Python setuptools and pip itself"
    python3 -m pip install --upgrade setuptools
    python3 -m pip install --upgrade pip

    echo "Updating all Python packages installed via pip..."
    python3 -m pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs python3 -m pip install -U

    echo 'Updating composer global packages'
    composer global update

    echo "Updating npm itself..."
    npm i -g npm
    echo "Updating npm packages..."
    npm update -g

    echo "Updating gems..."
    gem update --system
    gem update

    # update git repos
    cd ~/dotfiles && git submodule update --recursive --remote

    # upgrade oh_my_zsh
    omz update

}

# bulk pdf password remove
function pdf-decrypt() {
    if [ -z $1 ]; then
        echo "Please specify PASSWORD for PDF(s)"
    else
        mkdir -p temp && for f in *.pdf; do qpdf --password=$1 --decrypt "$f" "temp/$f"; done && mv temp/* . && rm -rf temp
    fi
}

# ringtone
function ringtone() {
    if [ -f $1 ]; then
        DIR=$(dirname "$1")
        BASE=$(basename "$1")
        FILE="${BASE%.*}"
        NEW=$DIR/$FILE.m4r
        echo "Creating ringtone from \n $1 to \n $NEW"
        ffmpeg -i $1 -ac 1 -ab 320000 -f mp4 -acodec aac -y $NEW
    else
        echo "Please specify filepath as input"
    fi
}

# Change case

uc() {
    pbpaste | awk '{print toupper($0)}' | pbcopy
}

lc() {
    pbpaste | awk '{print tolower($0)}' | pbcopy
}

# source - https://gist.github.com/jimbojsb/1630790#gistcomment-1207389

function code-highlight() {
    if [ -z "$2" ]; then
        src="pbpaste"
    else
        src="cat $2"
    fi
    $src | highlight -O rtf --syntax $1 | pbcopy
}

# clean docker - bases on http://zaiste.net/2014/09/removing_docker_containers/
docker-clean() {
    echo "Cleaning exited containers"
    docker ps -aq --filter status=exited --no-trunc | xargs docker rm
    echo "Cleaning dangling images"
    docker images -q --filter dangling=true | xargs docker rmi
    echo "Cleaning dangling volumes"
    docker volume ls -q --filter dangling=true | xargs docker volume rm
}

docker-list() {
    echo "Listing all container"
    docker ps -a
    echo "Listing all images"
    docker images
    echo "Listing all volumes"
    docker volume ls
}

# rsync downloads to external HDD
torext() {
    rsync -av --human-readable --progress --ignore-existing --remove-source-files root@rtgate:/home/rtcamp/Downloads /Volumes/HDD/new
    rsync -arv --delete $(mktemp -d)/ root@rtgate:/home/rtcamp/Downloads
}

# find shorthand
function f() {
    find . -name "$1" 2>&1 | grep -v 'Permission denied'
}

# Create a new directory and enter it
function mdc() {
    mkdir -p "$@" && cd "$_"
}

# Copy w/ progress
rc() {
    rsync -arvz --human-readable --progress $1 $2
}

# Determine size of a file or total size of a directory
function fs() {
    if du -b /dev/null >/dev/null 2>&1; then
        local arg=-sbh
    else
        local arg=-sh
    fi
    if [[ -n "$@" ]]; then
        du $arg -- "$@"
    else
        du $arg .[^.]* *
    fi
}

# `c` with no arguments opens the current directory in Code Editor, otherwise
# opens the given location
function c() {
    if [ $# -eq 0 ]; then
        code .
    else
        code "$@"
    fi
}

# `v` with no arguments opens the current directory in Vim, otherwise opens the
# given location
function v() {
    if [ $# -eq 0 ]; then
        vim .
    else
        vim "$@"
    fi
}

# `o` with no arguments opens the current directory, otherwise opens the given
# location
function o() {
    if [ $# -eq 0 ]; then
        open .
    else
        open "$@"
    fi
}

# who is using the laptop's iSight camera?
cam() {
    echo "Checking to see who is using the iSight camera… 📷"
    usedby=$(lsof | grep -w "AppleCamera\|USBVDC\|iSight" | awk '{printf $2"\n"}' | xargs ps)
    echo -e "Recent camera uses:\n$usedby"
}

# animated gifs from any video
# from alex sexton   gist.github.com/SlexAxton/4989674
gifify() {
    if [[ -n "$1" ]]; then
        if [[ $2 == '--good' ]]; then
            ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
            time convert -verbose +dither -layers Optimize -resize 900x900\> out-static*.png GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - >$1.gif
            rm out-static*.png
        else
            ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 >$1.gif
        fi
    else
        echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
    fi
}

# turn that video into webm.
# brew reinstall ffmpeg --with-libvpx
webmify() {
    ffmpeg -i $1 -vcodec libvpx -acodec libvorbis -isync -copyts -aq 80 -threads 3 -qmax 30 -y $2 $1.webm
}

## Folder video duration
## for all folders under this path, calculate duration of all videos in it
##      and set a tag on folder
fdur() {
    for ITEM in *; do
        if [ -d "$ITEM" ]; then
            echo "$ITEM"
            find $ITEM -exec \
                ffprobe -v quiet -of csv=p=0 -show_entries format=duration {} \; | 
                paste -sd+ - | 
                bc | 
                awk '{printf("%02d:%02d\n",($1/60/60),($1/60%60))}' | 
                xargs -I{} tag -0 -a {} $ITEM
        else
            ffprobe -v quiet -of csv=p=0 -show_entries format=duration $ITEM | 
                awk '{printf("%02d:%02d\n",($1/60/60),($1/60%60))}' |
                xargs -I{} tag -0 -a {} $ITEM
        fi
    done
}

untag() {
    for DIR in *; do
        # if [ -f "$DIR" ]; then
            echo "$DIR"
            tag -s . $DIR
            tag -r . $DIR
        # fi
    done
}
