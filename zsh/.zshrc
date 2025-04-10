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

# aliases
# Check if lsd is installed
if command -v lsd >/dev/null 2>&1; then
    alias ls="lsd -a"
else
    # Print the installation message if lsd is not installed
    if [[ -z "$DISABLE_LSD_MESSAGE" ]]; then
        echo "lsd is not installed. To install lsd, run:"
        echo "  sudo apt install lsd   # Debian/Ubuntu"
        echo "  sudo pacman -S lsd     # Arch/Manjaro"
        echo "  or visit https://github.com/Peltoche/lsd"
        echo "To disable this message, set the DISABLE_LSD_MESSAGE environment variable."
    fi

    # Alias ls to the default ls if lsd is not installed
    alias ls="ls --color=auto"
fi


eval "$(oh-my-posh init zsh --config ~/Documents/projects/themes/terminal/emodipt-custom.omp.json)"
export GOPROXY=https://proxy.golang.org,direct

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.zsh/zsh-completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle)

# Customize syntax highlighting colors to match the terminal theme
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES=(
  'default'             'fg=#C0C0C0'           # Default color for most things (commands, arguments, etc.)
  'command'             'fg=#E06C75'           # Pinkish red for recognized commands
  'argument'            'fg=#F3C267'           # Yellow for arguments
  'option'              'fg=#61AFEF'           # Cyan for options (e.g., -a, --help)
  'path'                'fg=#58A6FF'           # Softer blue for file paths
  'number'              'fg=#61AFEF'           # Blue for numbers (same as path)
  'reserved-word'       'fg=#E06C75'           # Red for reserved words like `if`, `for`, etc.
  'error'               'fg=#E06C75,bold'      # Bold red for unrecognized input (errors)
  'unknown-command'     'fg=#E06C75'           # Red for unknown commands
)

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

