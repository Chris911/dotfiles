source ~/.zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-extras
  ruby
  brew
  history-substring-search
  yarn
  redis-cli
  systemd
)

source $ZSH/oh-my-zsh.sh

source ~/.zsh/aliases.zsh

if [ "$SPIN" ]; then
  PROMPT="[spin] "$PROMPT
fi

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000