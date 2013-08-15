HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
bindkey -v
zstyle :compinstall filename '/home/geoffliu/.zshrc'

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

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

REPORTTIME=30

autoload -Uz vcs_info

function precmd {
  vcs_info 'prompt'
}

setopt PROMPT_SUBST
zstyle ':vcs_info:*:prompt:*' formats "%b " ""
zstyle ':vcs_info:*:prompt:*' actionformats "%b %a " ""
zstyle ':vcs_info:*:prompt:*' nvcsformats "" ""
PROMPT='%B%F{blue}[%m ${vcs_info_msg_0_}%1~]%# %f%b'
RPROMPT='%0(?.%B%F{blue}%D %T [ OK ]%f%b.%B%F{blue}%S[ %? ]%s%f%b'

export EDITOR=vim
export VISUAL=vim
export LESS=FRX
export PAGER=less
export WWW_HOME="www.google.com"

vimquickfix() {
  errorfile=$(mktemp)
  $=1 > $errorfile
  if [[ -s $errorfile ]]; then
    vim -q $errorfile
  else
    echo $2
  fi
}

alias gm="git checkout master"
alias gca="git commit -a -m "
