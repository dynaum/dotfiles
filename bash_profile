. ~/.profile
[[ -e "$HOME/.local.sh" ]] && . $HOME/.local.sh

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export EDITOR="vim"
export SHELL="bash"

export TMUX_POWERLINE_SEG_WEATHER_GREP_DEFAULT="/usr/local/bin/ggrep"
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="455827"

export ANDROID_HOME=/Users/dynaum/projects/android-sdk-macosx
export ANDROID_SDK_PATH=/Users/dynaum/Library/Android/sdk

#export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

source "$HOME/.git-completion.sh"

export PS1="\u @ \[\e[33m\]\W\[\e[m\]\`__git_ps1\`\n\\$ "

#source ~/bin/tmuxinator.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/elber.silva/.sdkman"
[[ -s "/Users/elber.silva/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/elber.silva/.sdkman/bin/sdkman-init.sh"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="~/.nodenv/shims:/usr/local/opt/imagemagick@6/bin:$HOME/.cargo/bin:$PATH"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

eval "$(nodenv init -)"

export KUBECONFIG=/Users/dynaum/.k8s/config/cluster-config
