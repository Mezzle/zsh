export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="terminalparty"

DISABLE_AUTO_UPDATE="true"

plugins=(git debian gitfast git-extras knife phing screen sudo vagrant wd)

source $ZSH/oh-my-zsh.sh

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

