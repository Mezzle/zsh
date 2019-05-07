if [ -f /usr/local/bin/vault ]; then
    autoload -U +X bashcompinit && bashcompinit
    complete -o nospace -C /usr/local/bin/vault vault
fi
