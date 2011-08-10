
test -r /sw/bin/init.sh && . /sw/bin/init.sh

export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Library/Java/Home/:/Library/Java/Home/bin:/usr/local/sbin:$HOME/bin:$PATH
export PATH=$HOME/local/node/bin:/Developer/usr/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export ARCHFLAGS='-arch i386'
export JAVA_HOME=/Library/Java/Home/
export CATALINA_HOME=/Library/Tomcat

. ~/.alias
