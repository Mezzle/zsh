if [ -x "$(which hub)" ]; then
    alias git=hub
fi

setopt complete_aliases
