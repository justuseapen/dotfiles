#https://blog.codeship.com/improving-ruby-performance-with-rust/ If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/justus/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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

# User configuration

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

# Fix the wierd DELETE button issue in VIM
stty erase '^?'

# clear terminal pane
alias c="clear"

# Map common localhost ports to their numbers
alias 3000="open http://localhost:3000"
alias 4000="open http://localhost:4000"
alias 5000="open http://localhost:5000"

# open rc files in vim
alias zshrc="vim ~/dotfiles/.zshrc"
alias vimrc="vim ~/dotfiles/.vimrc"
alias tmuxconf="vim ~/dotfiles/.tmux.conf"

# re-source all rc files
alias resource="source ~/.zshrc"

# Start Postgres
alias pg="postgres -D /usr/local/var/postgres9.6"

# Add Haskell Stack to path
export PATH="$PATH:/Users/justus/.local/bin"

# Include these for building android from source
export ANDROID_SDK=/Users/your_unix_name/android-sdk-macosx
export ANDROID_NDK=/Users/your_unix_name/android-ndk/android-ndk-r10e

# Add Android Debugging Bridge to the path
export PATH="$PATH:/Users/justus/Library/Android/sdk"

# export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

. /Users/justus/Documents/Code/torch/distro/install/bin/torch-activate

# tensorflow
alias tf="source ~/Documents/Code/tensorflow/bin/activate"

# Fix nomatch errors
unsetopt nomatch

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/justus/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/justus/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/justus/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/justus/google-cloud-sdk/completion.zsh.inc'; fi

# Deletes all branches in a project except master
alias gbc="git branch | grep -v \"master\" | xargs git branch -D && git branch"

# ngroks justuseapen.ngrok
alias ngje="ngrok authtoken 5NTShfip5aX8fAcSpL7rW_7Mc6LGBgZCKNifGjRnhFF"

# ngroks smartlogicwaterbot.ngrok
alias ngsl="ngrok authtoken 5y2EJMcgYwRTpVNKGMqqs_78rhfb3WFvNbZbv9pM2cy"

# opens foxleigh
alias foxleigh='open http://foxleigh.foxleigh.localhost:3000'

# Mysql stuff
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
