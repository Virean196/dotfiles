#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/.local/opt/go/bin
export PATH=$PATH:$HOME/go/bin
eval "$(starship init bash)"
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dev='tmux attach -t bootdev 2>/dev/null || tmux new -s bootdev'
