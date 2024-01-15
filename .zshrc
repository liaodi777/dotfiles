## 履歴保存管理
export LANG=ja_JP.UTF-8
export HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

## lsコマンドの色付け

alias ls='ls --color=auto'

eval "$(~/.local/bin/mise activate zsh)"
#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(sheldon source)"
eval "$(starship init zsh)"
