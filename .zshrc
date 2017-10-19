if [ ! -d $HOME/.antigen ]; then
    mkdir $HOME/.antigen
fi

if [ ! -f $HOME/.antigen/antigen.zsh ]; then
    curl -sL git.io/antigen > $HOME/.antigen/antigen.zsh
fi

source $HOME/.antigen/antigen.zsh

antigen init $HOME/.antigenrc

if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi
