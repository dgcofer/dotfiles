# Path to your oh-my-zsh installation.
export ZSH=/home/derek/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git web-search colorize tmux)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

###Rbenv Setup###
if [ -d $HOME/.rbenv ]; then
	PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

#JAVA_HOME
export JAVA_HOME="/opt/java/jdk1.8.0_45"

#CUDA_HOME
export CUDA_HOME="/usr/local/cuda"

#GRADLE_HOME
export GRADLE_HOME="/opt/gradle-2.4"
PATH="$GRADLE_HOME/bin:$PATH"

#ANT_HOME
#export ANT_HOME="/opt/apache-ant-1.9.4"

#ANDROID_HOME
export ANDROID_HOME="$HOME/Android/Sdk"
PATH="$ANDROID_HOME/platform-tools:$PATH"

#CMAKE_HOME
export CMAKE_HOME="/opt/cmake-3.2.2-Linux-x86_64"
PATH="$CMAKE_HOME/bin:$PATH"

#Golang
PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/workspace/go"
PATH="$PATH:$GOPATH/bin"

export VIM_BUILD="$HOME/vim_build"

export PATH

if [ "$COLORTERM" = "gnome-terminal" -a "$TERM" = "xterm" ]; then
		export TERM=xterm-256color
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/derek/.sdkman"
[[ -s "/home/derek/.sdkman/bin/sdkman-init.sh" ]] && source "/home/derek/.sdkman/bin/sdkman-init.sh"
