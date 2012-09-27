# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh


test -r /sw/bin/init.sh && . /sw/bin/init.sh

export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Library/Java/Home/:/Library/Java/Home/bin:/usr/local/sbin:$HOME/bin:$PATH
export PATH=$HOME/local/node/bin:/Developer/usr/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

export ARCHFLAGS='-arch i386'
export JAVA_HOME=/Library/Java/Home/
export CATALINA_HOME=/Library/Tomcat

. ~/.alias
