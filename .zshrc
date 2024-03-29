# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zhou/.zshrc'

autoload -U compinit
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
alias kitten="kitty +kitten"
alias code="code --ozone-platform-hint=auto --enable-wayland-ime"

source /usr/share/autojump/autojump.zsh

export PATH=$PATH:~/.yarn/bin

export _JAVA_AWT_WM_NONREPARENTING=1
