# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zhou/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# The following lines were added by myself
autoload -Uz promptinit
promptinit
prompt gentoo
setopt hist_ignore_all_dups
setopt hist_ignore_space
# End of lines added by myself

alias ls='ls --color'
alias ll='ls -al'
alias la='ls -A'
alias l='ls'
alias py='python3'

source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
source /usr/share/autojump/autojump.zsh

export EDITOR='vi'
