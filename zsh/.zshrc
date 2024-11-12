###########
# ENVIRON #
###########
export PATH="$PATH:$HOME/.local/bin"

# Cargo bin path
export PATH=$PATH:~/.cargo/bin/

# environment variables

export PATH=$PATH:/home/ghost/.spicetify

export PATH=$PATH:/home/ghost/.local/share/gem/ruby/3.3.0/bin

#############
#  GENERAL  #
#############

export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13   # how often to auto-update (in days).

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

DISABLE_LS_COLORS="false"

DISABLE_AUTO_TITLE="false"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="false"


###########
# HISTORY #
###########
export HISTSIZE=10000
# export HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


#############
#  PLUGINS  #
#############
plugins=(
	git
	zsh-autosuggestions
	#zsh-autocomplete
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


########################
#  User configuration  #
########################
# Locale
export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# zoxide
source <(fzf --zsh)
eval "$(zoxide init zsh)"

# OMP init
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/config.json)"

# Starship init
# eval "$(starship init zsh)"

# Loading rbenv
eval "$(rbenv init - zsh)"

######################
#      ALIASES       #
######################
alias v="nvim"
alias ls="eza"
alias cd="z"
alias q="exit"
alias so="source ~/.zshrc"

# Alias eza -t = eza -TL 2
function eza() {
    if [[ $1 == "-t" ]]; then
        command eza -TL 2 "${@:2}"
    else
        command eza "$@"
    fi
}

#
######################
#  STATRUP COMMAND   #
######################
fastfetch


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion