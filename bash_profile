. ~/.profile
. ~/.local_config

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export JASMINE_BROWSER="chrome"
export EDITOR="vim"

export TMUX_POWERLINE_SEG_WEATHER_GREP_DEFAULT="/usr/local/bin/ggrep"
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="455827"
export DOCKER_HOST=tcp://localhost:4243

eval "$(rbenv init -)"

source "$HOME/.git-completion.sh"
# PS1='[\u] \[\033[1;33m\]\w\a\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")\$ '
PS1='\u @ \[\033[1;33m\]\W\a\[\033[0m\] `git branch 2> /dev/null | grep -e ^* | sed -E s/^\\\\\*\ \(.+\)$/\(\\\\\1\)/`\[\033[37m\]$\[\033[00m\] '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
source /Users/dynaum/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
source /Users/dynaum/google-cloud-sdk/completion.bash.inc
