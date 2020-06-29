# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jediii/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#POWERLEVEL9K_MODE='nerdfont-complete'
# ZSH_THEME="powerlevel9k/powerlevel9k"

ZSH_THEME="dracula"

# ZSH_THEME="ys"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
# 命令高亮
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ------------------ User configuration ---------------------------#

# 添加开机启动:
# ln -sfv /usr/local/opt/privoxy/*.plist ~/Library/LaunchAgents  
# 启动 Privoxy:
# launchctl load ~/Library/LaunchAgents/homebrew.mxcl.privoxy.plist  
# 如果不需要用 launchctl 就直接运行:
# privoxy /usr/local/etc/privoxy/config  

# use vim-mode in zsh
bindkey -v

# Jediii pyenv setting
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# brew python3(deleted) virtualenvwrapper setting
# export WORKON_HOME=~/Workspaces/PythonEnvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# source /usr/local/bin/virtualenvwrapper.sh

# java setting
# JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.7.jdk/Contents/Home"
export JAVA_HOME
CLASS_PATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
PATH=".:$PATH:$JAVA_HOME/bin"

# scala setting
export PATH="/usr/local/opt/scala@2.11/bin:$PATH"

# Alias setting
alias Xcode="open -a Xcode"
alias typora="open -a typora"
alias cls="clear"

alias vim="/usr/local/Cellar/vim/8.1.1200/bin/vim"
alias ga="git add"
alias gs="git status"
alias gc="git commit"
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias df="df -h"           # -h prints human readable format

# binja mysql setting
PATH=$PATH:/usr/local/mysql/bin

# Android platform 
export PATH=$PATH:/Users/jediii/Pixel/platform-tools/

# cmake
export PATH=/Applications/CMake.app/Contents/bin:$PATH

# binja kinect OpenNI2
export OPENNI2_REDIST=/usr/local/lib/ni2
export OPENNI2_INCLUDE=/usr/local/include/ni2

# Standard ML setting
export PATH="$PATH:/usr/local/smlnj/bin"


# binja qshell setting
# export PATH=$PATH:/usr/local/bin/

# binja tree setting
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# ruby settings
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# C++11 setting
alias g++='g++ -std=c++11'

export PATH="/usr/local/opt/nss/bin:$PATH"
