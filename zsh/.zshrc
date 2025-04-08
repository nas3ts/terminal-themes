# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nasets/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(oh-my-posh init zsh --config ~/Documents/projects/themes/terminal/emodipt-custom.omp.json)"
export GOPROXY=https://proxy.golang.org,direct
