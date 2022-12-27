# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias git="nocorrect git"
alias npm="nocorrect npm"
alias rspec="nocorrect rspec"

export EDITOR='vim'
export CDPATH='$HOME/:$HOME/projects'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TMUX_POWERLINE_SEG_WEATHER_LOCATION=26799139
export JAVA_HOME="$(/usr/libexec/java_home)"

# AWS Config
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/private-key-in-PCKS8-format.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/certificate.pem | /usr/bin/head -1)"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credential-file.cfg
export SERVICE_HOME="$AWS_CLOUDWATCH_HOME"
export AWS_AUTO_SCALING_HOME="/usr/local/Library/LinkedKegs/auto-scaling/jars"
export AWS_CLOUDWATCH_HOME="/usr/local/Library/LinkedKegs/cloud-watch/jars"
export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/jars"
export AWS_ELB_HOME="/usr/local/Library/LinkedKegs/elb-tools/jars"

plugins=(git rvm brew bundler gem macos redis-cli)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

homebrew=/usr/local/bin:/usr/local/sbin
PATH=$homebrew:$PATH:$HOME/bin

. ~/.alias
. ~/.local_config

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/elber.silva/.sdkman"
[[ -s "/Users/elber.silva/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/elber.silva/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.asdf/shims:$PATH"

eval "$(rbenv init -)"

source /Users/elber.ribeiro/.config/broot/launcher/bash/br
