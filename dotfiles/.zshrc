# Path to your oh-my-zsh installation.
export ZSH=/Users/ming/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
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
plugins=(git rails ruby cp gems pod xcode docker)

# User configuration

export PATH="/Users/ming/.rvm/gems/ruby-2.2.1/bin:/Users/ming/.rvm/gems/ruby-2.2.1@global/bin:/Users/ming/.rvm/rubies/ruby-2.2.1/bin:/Users/ming/.gvm/pkgsets/go1.5/global/bin:/Users/ming/.gvm/gos/go1.5/bin:/Users/ming/.gvm/pkgsets/go1.5/global/overlay/bin:/Users/ming/.gvm/bin:/Users/ming/.gvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ming/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH=$PATH:/usr/local/opt/go/libexec/bin:/usr/local/bin
export PATH=$PATH:/usr/local/bin/json-server:/usr/local/Cellar/git-extras/3.0.0_1/bin
export PATH=$PATH:/usr/local/lib/node_modules/webpack-dev-server
export PATH=$PATH:usr/local/Cellar/graphviz/2.38.0/bin/
export PATH=$PATH:/usr/local/sbin/
export PATH=$PATH:"/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/.rvm/bin:~/.rvm/bin"
export PATH=$PATH:/usr/local/Cellar/python/2.7.11/bin/
export PATH=$PATH:/usr/local/Cellar/vault/0.5.0_1/bin/
export PATH=$PATH:/usr/local/Cellar/httpie/0.9.3/bin/
export PATH=$PATH:/usr/local/Cellar/gource/0.43_3/bin/
export PATH=$PATH:/usr/local/m-cli

export GOPATH=/home/$USER/go

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"


source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cloc="/usr/local/Cellar/cloc/1.64/bin/cloc"
alias todo="/Users/ming/Codes/todo/todo"

alias dos2unix=/usr/local/Cellar/dos2unix/6.0.5/bin/dos2unix
alias test_machine="ssh ubuntu@54.169.78.110"
alias linode="ssh huangmh@106.186.127.93"
alias fix_xcode="find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add `defaults read /Applications/Xcode.app/Contents/Info.plist DVTPlugInCompatibilityUUID`"

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
export NODE_PATH="/usr/local/lib/node_modules"

# babel-node
alias bn='babel-node'

# docker env
# alias docker_env="eval $(docker-machine env default)"
# fix docker
alias fix_docker='docker-machine start default; docker-machine regenerate-certs default; eval "$(docker-machine env default)"'

#local
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim
export REACT_EDITOR=vim

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/ming/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PYTHONPATH=$PYTHONPATH:'/Users/ming/Projects'

alias eslint=/Users/ming/.nvm/versions/node/v5.10.1/bin/eslint
alias vim=/usr/local/Cellar/vim/7.4.1655/bin/vim

alias start_stunnel="/usr/local/bin/stunnel /usr/local/etc/stunnel/shvpn.stunnel.conf"

export TRELLO_USER_TOKEN='24bc2ffa191ff89c3ce9c6607bddc8997a31f3aa5dd6475a0cca0e56ea9d5af8'
export TRELLO_KEY='228e2f4983e69f69d232a8dc265b1331'
