# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export _JAVA_OPTIONS="-Xms512m -Xmx3g"

export JAVA_HOME=/home/janarthan/installs/jdk1.8.0_112
#export JAVA_HOME=/home/janarthan/installs/jdk1.7.0_80
export MAVEN_HOME=/home/janarthan/installs/apache-maven-3.5.0
#export NODE_HOME=/home/janarthan/installs/node611
export NODE_HOME=/home/janarthan/installs/nodeV89
#export nodeModulesGlobalHome=/home/janarthan/installs/node611/.node_modules_global
export GRADLE_HOME=/home/janarthan/installs/gradle-4.9

export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin:$NODE_HOME/bin:$GRADLE_HOME/bin

#without NODE_HOME
#export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin
