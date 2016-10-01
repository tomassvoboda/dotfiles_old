# ZSH config file

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=0
zstyle ':completion:*' original false
zstyle ':completion:*' prompt 'Number of errors: %e'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/tomas/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# vim mode
#bindkey -v
# End of lines configured by zsh-newuser-install

#fix home, end, etc. keys (with vim mode)
#bindkey -M viins "^[[1~" beginning-of-line
#bindkey -M viins "^[[4~" end-of-line
#bindkey -M viins "^[[5~" beginning-of-history
#bindkey -M viins "^[[6~" end-of-history
#bindkey -M viins "^[[3~" delete-char
#bindkey -M viins "^[[2~" quoted-insert

typeset -g -A key
#bindkey '\e[3~' delete-char
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
#bindkey '\e[2~' overwrite-mode
bindkey '^?' backward-delete-char
bindkey '^[[1~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[4~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line

PROMPT='%n@%m %~ > '

# color ls output only to terminal and use ISO time format
alias ls="ls --color=auto --time-style=long-iso"
alias l="ls -1"
alias '..'='cd ..'
alias -g ...='../..'
alias -g ....='../../..'
# -A (all except . and ..) -h (human readable sizes)
alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -lhA'
alias grep='grep --color=auto'
alias bc='bc -lq'
alias count='wc -l'

alias music='ncmpcpp'

# Set term
#export TERM=rxvt-unicode-256color

# Sets editor to vim
export EDITOR='vim'

# Add ~/bin to PATH for scripting
export PATH="$PATH:$HOME/bin"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
 [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Prompt the entry of the GPG and SSH keys passphrases
eval `keychain --eval --agents ssh --quiet --quick ~/.ssh/id_rsa ~/.ssh/id_rsa_feral`
#eval `keychain --eval --agents gpg --quiet --quick 94DDFB71A4838600`
