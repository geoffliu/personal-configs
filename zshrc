HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
bindkey -v
zstyle :compinstall filename '/home/geoffliu/.zshrc'

bindkey -v '\\q' push-line-or-edit
bindkey -v 'jk' vi-cmd-mode
bindkey -a '/' history-incremental-search-backward
bindkey -a '?' history-incremental-search-forward

foreground-command() { fg }
zle -N foreground-command
bindkey '^Z' foreground-command

autoload -Uz compinit
compinit

autoload -U url-quote-magic
zle -N self-insert url-quote-magic

setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt HISTIGNORESPACE

setopt NO_NOMATCH
setopt NO_BAD_PATTERN
setopt EXTENDEDGLOB

setopt IGNORE_EOF

DIRSTACKSIZE=10
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
alias d="dirs -v"

REPORTTIME=10

autoload -Uz vcs_info

function precmd {
  vcs_info 'prompt'
}

setopt PROMPT_SUBST
function git_status_char {
  [[ -n "$(git status -s 2>/dev/null)" ]] && echo "✎ "
}
function vim_status_word {
  echo ${${KEYMAP/vicmd/[ NORMAL ]}/(main|viins)/[ INSERT ]}
}
function shared_rprompt {
  echo "$(vim_status_word) %D %T"
}

function zle-line-init zle-keymap-select {
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

zstyle ':vcs_info:*:prompt:*' formats "%u%b "
zstyle ':vcs_info:*:prompt:*' actionformats "%b %a "
PROMPT='%F{5}[%m $(git_status_char)${vcs_info_msg_0_}%1~]%# %f'
RPROMPT='%0(?.%F{5}$(shared_rprompt) [ OK ]%f.%F{5}%S$(shared_rprompt) [ %? ]%s%f)'

export EDITOR=vim
export VISUAL=vim
export LESS=FRX
export PAGER=less
export WWW_HOME="www.google.com"
export BROWSER="google-chrome-stable"

vimquickfix() {
  errorfile=$(mktemp)
  $=1 > $errorfile
  if [[ -s $errorfile ]]; then
    vim -q $errorfile
  else
    echo $2
  fi
}

gca() {
  if [ $# -eq 0 ]; then
    git commit -a -m .
  else
    git commit -a -m "$*"
  fi
}

gls() {
  git log --format=oneline $* | head
}

alias gm=" git checkout master"
alias gc=" git checkout"
alias gs=" git status -s"
alias gd=" git diff"
alias gpp=" git pull && git push"
alias b=" git branch"
alias gpc=' git push origin $(git rev-parse --abbrev-ref HEAD)'
alias -g MM=' $(git merge-base master HEAD)'

alias ll=" ls -lh"
alias ls=" ls"
alias cd=" cd"
alias nv=" nvim"
alias v="fg %vim || vim"
alias srd=" screen -d -R"
