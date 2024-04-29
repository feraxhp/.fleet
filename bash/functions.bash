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
