# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnosterzak"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
	vi-mode
  git
  nvm
  ssh-agent
)
# To add ssh-key manually use
# ssh-add -k <path-to-key>

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias port="lsof -i -P -n | grep LISTEN"
alias gpnv="git push --no-verify"
alias gcnv="git commit --no-verify"
alias olocalhost="open -a 'Google Chrome' 'http://localhost:8000/'"
alias github="open -a 'Google Chrome' 'https://github.com/Larox'"
alias videorepo="open -a 'Google Chrome' 'https://github.com/ProjectAussie/video-generation'"
alias openEmbark="cd /Users/Sebastianarias/Documents/Embark/projectaussie/projectaussie.com"
alias home="cd ~"
alias pythonblog="/Users/Sebastianarias/moviepy_python_blog/tutorials"
alias runmoviepy='docker run -it -v "$PWD:/code" -w "/code" moviepy python '
alias ebaws="AWS_EB_PROFILE=embark eb"
alias pa="spotify pause"
alias pl="spotify play"
alias nx="spotify next"
alias pv="spotify prev"

export EDITOR="nvim"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# added by travis gem
[ -f /Users/Sebastianarias/.travis/travis.sh ] && source /Users/Sebastianarias/.travis/travis.sh


# add notification when a process has finished
source ~/.iterm2_shell_integration.zsh

# Pyenv path configuration
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Cheat path configuration
export CHEAT_PATH="$CHEAT_PATH:$HOME/self-cheat"
# export CHEAT_USER_DIR='~/self-cheat'

# Export Open SSL for mysql client installation
export PATH="/usr/local/opt/openssl/bin:$PATH"
