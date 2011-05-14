. ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

rmate() {
  mate $(ls -1 | egrep -v "(log|git|public_stub|tmp|doc|.*\.war)" | egrep -v .DS_Store)
}

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export MANPAGER="/opt/local/bin/most -s"

# Alias e atalhos
case `uname` in
 Darwin)
   export MANPAGER="/opt/local/bin/most -s"
   alias ls='ls -G'
   ;;
 *) alias ls='ls --color=auto';;
esac

source "$HOME/.git-completion.sh"
# PS1='[\u] \[\033[1;33m\]\w\a\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")\$ '
PS1='\u @ \[\033[1;33m\]\W\a\[\033[0m\] `rvm-prompt i v` `git branch 2> /dev/null | grep -e ^* | sed -E s/^\\\\\*\ \(.+\)$/\(\\\\\1\)/`\[\033[37m\]$\[\033[00m\] '

