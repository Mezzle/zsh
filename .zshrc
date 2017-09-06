export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="terminalparty"

DISABLE_UPDATE_PROMPT="true"

plugins=(aws bower command-not-found composer common-aliases compleat debian docker encode64 gpg-agent git gitfast git-extras github knife npm nyan perms screen sprunge sudo systemd vagrant web-search yarn wd)

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
