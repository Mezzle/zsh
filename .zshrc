if [ ! -d $HOME/.antigen ]; then
    mkdir $HOME/.antigen
fi

if [ ! -f $HOME/.antigen/antigen.zsh ]; then
    curl -sL git.io/antigen > $HOME/.antigen/antigen.zsh
fi

source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle aws
antigen bundle bower
antigen bundle command-not-found
antigen bundle composer
antigen bundle common-aliases
antigen bundle compleat
antigen bundle debian
antigen bundle docker
antigen bundle encode64
antigen bundle gpg-agent
antigen bundle git
antigen bundle gitfast
antigen bundle git-extras
antigen bundle github
antigen bundle knife
antigen bundle npm
antigen bundle nyan
antigen bundle perms
antigen bundle screen
antigen bundle sprunge
antigen bundle sudo
antigen bundle systemd
antigen bundle vagrant
antigen bundle web-search
antigen bundle yarn
antigen bundle wd

antigen theme terminalparty

antigen bundle zsh-users/zsh-autosuggestions

antigen apply


if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi
