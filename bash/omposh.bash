if command -v oh-my-posh &> /dev/null; then
    eval "$(oh-my-posh init bash --config '~/.fleet/themes/ferax.omp.json')"
else
    echo "oh-my-posh is not instaled or is not in your PATH"
fi