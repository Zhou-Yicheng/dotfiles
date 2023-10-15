# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zhou/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U compinit promptinit
promptinit
prompt gentoo

alias ls="ls --color"
alias grep="grep --color"
alias diff="diff --color"

alias l="ls -Al"
alias la="ls -a"
alias ll="ls -l"

alias free="free -h"
alias neofetch="neofetch --color_blocks off"
alias clj="clojure-1.11"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

eval "$(zoxide init zsh)"
