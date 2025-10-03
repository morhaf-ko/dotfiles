setopt prompt_subst
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload bashcompinit && bashcompinit
autoload -Uz compinit
compinit
source <(kubectl completion zsh)
complete -C '/usr/local/bin/aws_completer' aws

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

eval "$(starship init zsh)"
eval "$(starship completions zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

export LANG=en_US.UTF-8
export EDITOR=/opt/homebrew/bin/nvim

alias cat=bat
export BAT_THEME="Catppuccin Mocha"

eval "$(zoxide init zsh --cmd cd)"

# Dirs
alias ..="cd .."
alias ...="cd ../.."

# GO
export GOPATH='/opt/homebrew/bin/go'

# Eza
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --icons --git"
alias ll="eza --tree --level=2 --long --icons --git"

# fzf
eval "$(fzf --zsh)"

# VI Mode!!!
bindkey jj vi-cmd-mode

alias reload="source ~/.zshrc"

# History
HISTSIZE=2000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

