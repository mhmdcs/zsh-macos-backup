# PATHS
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mohammedalmekhlafi/.oh-my-zsh"

# Homebrew ARM64 path:
export PATH="/opt/homebrew/bin:$PATH"

# Android Debug Bridge adb command path
export PATH=$PATH:/Users/mohammedalmekhlafi/Library/Android/sdk/platform-tools

# The following ways to set the absolute path an executable are all vaild.
# You can also add as many slashes and add as many double quotation marks as you want.
#export PATH=/Users/mohammedalmekhlafi/Library/Android/sdk/platform-tools:$PATH
#export PATH=~/Library/Android/sdk/platform-tools:$PATH
#export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH

# Sublime command subl
#export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

# mysql command path
export PATH=${PATH}:/usr/local/mysql-8.0.25-macos11-x86_64/bin

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Postgres psql command path
export PATH=/Library/PostgreSQL/16/bin:$PATH

# LLVM paths for CLANG (C compiler)
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/llvm/lib/pkgconfig"

# Adding this to ~/.zshenv ensures that the Rust environment variables are set up for all Zsh sessions
# including non-interactive ones like script executions, and interactive ones like the ones we start when we start the terminal emulator
# This line sources the env script located in $HOME/.cargo/.
# This env script inside .cargo not only sets the PATH, but it also sets other environment variables in the Rust toolchain.
# . "$HOME/.cargo/env"

# -------------

# OTHER EXPORTS
#set this to 1 to prevent homebrew from running updates on every install, but don't forget to update manually!
#export HOMEBREW_NO_AUTO_UPDATE=1

# -------------

# PROMPTS

# -------------

# THEMES
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#--ZSH_THEME="philips"
#ZSH_THEME="mh"
#ZSH_THEME="half-life"
#ZSH_THEME="clean"

# -------------

# PLUGINS
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
# Example format: plugins=(rails git brew textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# -------------

# prevent % sign at the end of the line when running c programs that use printf()
PROMPT_EOL_MARK=''

# -------------

# MISC

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias vim with nvim so that when you run vim it actually runs neovim instead
alias vim='nvim'
#pyenv command from the official pyenv github page.
#pyenv: python environment. It's a python version management tool.
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# To show user@host in themes that don't show it, and comment it out in the themes that do. This line must be at end of file to work.
PROMPT="%{$fg[blue]%}mhmdcs ${PROMPT}"
