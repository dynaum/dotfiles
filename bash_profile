. ~/.profile
. ~/.local_config
. ~/.azkfunctions.sh

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export JASMINE_BROWSER="chrome"
export EDITOR="vim"
export SHELL="bash"

export TMUX_POWERLINE_SEG_WEATHER_GREP_DEFAULT="/usr/local/bin/ggrep"
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="455827"
export DOCKER_HOST=tcp://localhost:4243

export MONGODB_HOST=192.168.51.4
export MONGODB_PORT=32769
export REDIS_HOST=192.168.51.4
export REDIS_PORT=32768
export ANDROID_HOME=/Users/dynaum/projects/android-sdk-macosx
export ANDROID_SDK_PATH=/Users/dynaum/Library/Android/sdk
export S3_IMAGES_BUCKET=parafuzo-images-dev

export RANCHER_URL=http://infra.parafuzo.com:8080/
export RANCHER_ACCESS_KEY=93336467A5BD275C9472
export RANCHER_SECRET_KEY=Lf5HbjdzjUvoUcEMRc6Ta13xU5wTKHAmtuJerWoa

export AWS_ACCESS_KEY_ID=AKIAIOUZDXQUOJNNTMOA
export AWS_SECRET_ACCESS_KEY=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
export JAVA8_HOME=$(/usr/libexec/java_home)

eval "$(rbenv init -)"

source "$HOME/.git-completion.sh"
# PS1='[\u] \[\033[1;33m\]\w\a\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")\$ '
PS1='\u @ \[\033[1;33m\]\W\a\[\033[0m\] `git branch 2> /dev/null | grep -e ^* | sed -E s/^\\\\\*\ \(.+\)$/\(\\\\\1\)/`\[\033[37m\]$\[\033[00m\] '

### Added by the Heroku Toolbelt
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/usr/local/heroku/bin:$PATH"

# The next line enables bash completion for gcloud.
source /Users/dynaum/google-cloud-sdk/completion.bash.inc


# The next line updates PATH for the Google Cloud SDK.
source '/Users/dynaum/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/dynaum/google-cloud-sdk/completion.bash.inc'
