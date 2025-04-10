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

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(~/.zsh/zsh-completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle)


# Customize syntax highlighting colors
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES=(
  'default'             'fg=white'             # Default color for most things (commands, arguments, etc.)
  'command'             'fg=green'             # Color for recognized commands
  'argument'            'fg=yellow'            # Color for arguments
  'option'              'fg=cyan'              # Color for options (e.g., -a, --help)
  'path'                'fg=magenta'           # Color for file paths
  'number'              'fg=blue'              # Color for numbers
  'reserved-word'       'fg=red'               # Color for reserved words like `if`, `for`, etc.
  'error'               'fg=red,bold'          # Color for unrecognized input (errors)
  'unknown-command'     'fg=red'               # Color for unknown commands
)

