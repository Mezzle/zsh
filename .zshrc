KERNEL=$(uname -s)

if [ ! -d $HOME/.antigen ]; then
    mkdir $HOME/.antigen
fi

if [[ "$KERNEL" == "Darwin" ]]; then
    if [ ! -f /usr/local/share/antigen/antigen.zsh ]; then
        brew install antigen
    fi

    source /usr/local/share/antigen/antigen.zsh
else
    if [ ! -f $HOME/.antigen.zsh ]; then
        wget -qO $HOME/.antigen.zsh http://git.io/antigen
    fi

    source $HOME/.antigen.zsh;
fi

antigen init $HOME/.antigenrc

if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi
