export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="terminalparty"

DISABLE_UPDATE_PROMPT="true"

plugins=(adb bower command-not-found composer debian encode64 git gitfast git-extras jira jsontools knife lwd lol npm nyan screen sprunge sudo systemd wd)

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
