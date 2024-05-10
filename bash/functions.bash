mkcd() {
    mkdir $1
    cd $1
}

bd(){
    cd ..
}


activate() {
    venv=".venv"
    if [ "$1" != "" ]; then
        venv="$1"
    fi
    if [ -d "./$venv" ]; then
        . "./$venv/bin/activate"
    else
        echo "There is not a venv directory"
        echo "Directory name: $venv"
    fi
}

install-minecraft(){
    if command -v minecraft &> /dev/null; then
        echo "Ya esta instalado"
    else
        mpath="$HOME/.local/bin"

        echo "Creating folder"
        mkdir -p $mpath

        echo "Downloading..."
        curl 'https://launcher.mojang.com/download/Minecraft.tar.gz' --output $mpath/minecraft.tar.gz

        echo "Uncompresing..."
        last=$(pwd)
        cd $mpath
        tar -xvzf $mpath/minecraft.tar.gz
        mv $mpath/minecraft-launcher/minecraft-launcher $mpath/minecraft

        echo "Cleaning..."
        rm -rf $mpath/minecraft-launcher
        rm -f minecraft.tar.gz
        cd $last

        echo "Done!"
    fi
}