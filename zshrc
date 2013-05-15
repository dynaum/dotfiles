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

export EDITOR='vim'
export CDPATH='.:~/:~/projects'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TMUX_POWERLINE_SEG_WEATHER_LOCATION=26799139

plugins=(git rvm brew bundler gem osx redis-cli)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

homebrew=/usr/local/bin:/usr/local/sbin
PATH=$homebrew:$PATH:$HOME/bin

. ~/.alias
. ~/.local_config
