. ~/.profile
. ~/projects/getninjas/tatame/gn-functions.sh
[[ -e ".local.sh" ]] && . ~/.local.sh
#. ~/.azkfunctions.sh
#. ~/.kube.sh

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export JASMINE_BROWSER="chrome"
export EDITOR="vim"
export SHELL="bash"

export TMUX_POWERLINE_SEG_WEATHER_GREP_DEFAULT="/usr/local/bin/ggrep"
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="455827"

export ANDROID_HOME=/Users/dynaum/projects/android-sdk-macosx
export ANDROID_SDK_PATH=/Users/dynaum/Library/Android/sdk

export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

source "$HOME/.git-completion.sh"
PS1='\u @ \[\033[1;33m\]\W\a\[\033[0m\] `git branch 2> /dev/null | grep -e ^* | sed -E s/^\\\\\*\ \(.+\)$/\(\\\\\1\)/``cat .terraform/environment 2> /dev/null | sed -E s/^\(.+\)$/[\\\\\1]/`\[\033[37m\]$\[\033[00m\] '

source ~/bin/tmuxinator.bash

function tplan {
  if [ -d "stages" ]; then
    terraform plan -var-file stages/$(cat .terraform/environment).tfvars | tee /dev/tty | landscape
  else
    terraform plan | tee /dev/tty | landscape
  fi
}

function tapply {
  if [ -d "stages" ]; then
    terraform apply -var-file stages/$(cat .terraform/environment).tfvars
  else
    terraform apply
  fi
}
