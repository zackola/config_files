# completion
autoload -U compinit
compinit -C

# case-insensitive and partial-word then substring
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} m:[-._]=[-._] r:|[-./_]=** r:|=*' '+l:|=*'

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim

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

setopt append_history
setopt SHARE_HISTORY
setopt correct

# ignore duplicate history entries
setopt histignoredups

# remove / from wordchars. god
WORDCHARS="${WORDCHARS:s#/#}"

HISTFILE=$HOME/.zhistory
HISTSIZE=5000
SAVEHIST=10000 # useful for setopt append_history

# add homebrew bin to PATH
export PATH=/usr/local/homebrew/bin:/usr/local/homebrew/sbin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"