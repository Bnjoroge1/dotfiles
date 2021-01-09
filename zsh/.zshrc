# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bnjoroge/dotfiles/.oh-my-zsh"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

#ZSH Tab completions
autoload -Uz compinit && compinit
# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
 DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
export C_INCLUDE_PATH=/opt/gdbm-1.8.3/include 
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z git github docker docker-compose autojump z zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
  if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
  else
    export EDITOR='mvim'
  fi
#ZSH DIRECTORY
ZDOTDIR = "/home/bnjoroge/dotfiles/zsh/.zshrc"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias myip="curl http://ipecho.net/plain; echo"
# Example aliases
alias zshconfig="vi dotfiles/.zshrc"
alias ohmyzsh="vim dotfiles/.oh-my-zsh"
alias logout="sudo pkill -u ${USER}"
alias gst='git status'
alias clh='curl localhost'
alias PythonP='cd ~/PythonProjects'
alias dbuild='docker build'
alias dcompose='docker-compose up'
alias sc="source $HOME/.zshrc"
alias ghpush_master='git push --set-upstream origin master'


[[ -s '/home/bnjoroge/.autojump/etc/profile.d/autojump.sh' ]] && source '/home/bnjoroge/.autojump/etc/profile.d/autojump.sh'
#export DEFAULT_USER = `whoami`
#export PS1="Bill@dev $>"
prompt_context() {
    local seq
    seq='%(!.{%F{yellow}%}.)%n'
    if [[ "$USER" != "$DEFAULT_USER" ]]; then
        seq="$seq@%m"
    fi
    prompt_segment black default $seq
}
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" };i foo '
alias update='sudo apt-get update && sudo apt-get upgrade'
DEFAULT_USER=`whoami` 
# # Git Commit, Add all and Push — in one step.
function gcap() {
    git add . && git commit -m "$*" && git push
}
# NEW.
function gnew() {
   gcap "📦 NEW: $@"
}

# IMPROVE. 
function gimp() {
     gcap "👌 IMPROVE: $@"
 }
 
# FIX.
function gfix() {
    gcap "�� FIX: $@"
}

# RELEASE.
function grlz() {
  gcap "🚀 RELEASE: $@"
}

# DOC.
function gdoc() {
     gcap "📖 DOC: $@"
}

source /home/bnjoroge/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

