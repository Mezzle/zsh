if [ -x "$(which hub)" ]; then
    alias git=hub
fi

fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
setopt complete_aliases
