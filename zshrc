# completion
autoload -U compinit
compinit -C

# case-insensitive and partial-word then substring
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} m:[-._]=[-._] r:|[-./_]=** r:|=*' '+l:|=*'

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=mate

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -e

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=200

# remove / from wordchars. god
WORDCHARS="${WORDCHARS:s#/#}"
