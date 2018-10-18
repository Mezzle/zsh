if [ ! -f /usr/local/share/antigen/antigen.zsh ]; then
    brew install antigen
fi

if [ ! -d $HOME/.antigen ]; then
    mkdir $HOME/.antigen
fi

source /usr/local/share/antigen/antigen.zsh

antigen init $HOME/.antigenrc

if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi
