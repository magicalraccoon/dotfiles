# # Path to your oh-my-zsh installation oh-my-zsh specific settings
export ZSH=~/.oh-my-zsh
export TERM=xterm-256color
source $ZSH/oh-my-zsh.sh

# # ZSH Customization Settings
ZSH_THEME="powerlevel10k/powerlevel10k"

# # fix pasting speed
# # ref https://github.com/zsh-users/zsh-autosuggestions/issues/238
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# # zsh tmux settings
ZSH_TMUX_AUTOSTART='true'
ZSH_TMUX_AUTOCONNECT='true' # do *** autoconnect to existing tmux session, allows a new term new tmux session

# # POWERLEVEL9K_TIME_FORMAT="%D{%T | %m.%d.%y}"
# ## 

# # Default username to hide "user@hostname" info
DEFAULT_USER="$(whoami)"

# # Uncomment the following line to use case-sensitive completion.
# # CASE_SENSITIVE="true"

# # Uncomment the following line to use hyphen-insensitive completion. Case
# # sensitive completion must be off. _ and - will be interchangeable.
# # HYPHEN_INSENSITIVE="true"

# # Uncomment the following line to disable bi-weekly auto-update checks.
# # DISABLE_AUTO_UPDATE="true"

# # Uncomment the following line to change how often to auto-update (in days).
# # export UPDATE_ZSH_DAYS=13

# #Uncomment the following line to disable colors in ls.
# # DISABLE_LS_COLORS="true"

# # Uncomment the following line to disable auto-setting terminal title.
# # DISABLE_AUTO_TITLE="true"

# # Uncomment the following line to enable command auto-correction.
# # ENABLE_CORRECTION="true"

# # Uncomment the following line to display red dots whilst waiting for completion.
# # COMPLETION_WAITING_DOTS="true"

# # Uncomment the following line if you want to disable marking untracked files
# # under VCS as dirty. This makes repository status check for large repositories
# # much, much faster.
# # DISABLE_UNTRACKED_FILES_DIRTY="true"

# # Uncomment the following line if you want to change the command execution time
# # stamp shown in the history command output.
# # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# # HIST_STAMPS="mm/dd/yyyy"

# # Would you like to use another custom folder than $ZSH/custom?
# # ZSH_CUSTOM=/path/to/new-custom-folder

# # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# # Example format: plugins=(rails git textmate ruby lighthouse)
# # Add wisely, as too many plugins slow down shell startup.
# plugins=(sudo git history tmux tmuxinator zsh-autosuggestions zsh-completions zsh-z)

# # User configuration

# # export MANPATH="/usr/local/man:$MANPATH"

# # You may need to manually set your language environment
# # export LANG=en_US.UTF-8

# # Preferred editor for local and remote sessions
# # if [[ -n $SSH_CONNECTION ]]; then
# #   export EDITOR='vim'
# # else
# #   export EDITOR='mvim'
# # fi

# # Compilation flags
# # export ARCHFLAGS="-arch x86_64"

# # ssh
# # export SSH_KEY_PATH="~/.ssh/rsa_id"

# #---- CUSTOM ----
# #Powerlevel9k/Powerlevel10k settings
# # https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config#p9kgt
# source $ZSH/oh-my-zsh.sh
# source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $HOME/.p9kgt
# source $HOME/.functions
# source $HOME/.aliases

# # Set personal aliases, overriding those provided by oh-my-zsh libs,
# # plugins, and themes. Aliases can be placed here, though oh-my-zsh
# # users are encouraged to define aliases within the ZSH_CUSTOM folder.
# # For a full list of active aliases, run `alias`.
# #
# # Example aliases
# # alias zshconfig="mate ~/.zshrc"
# # alias ohmyzsh="mate ~/.oh-my-zsh"
# if [ -f /usr/bin/neofetch ]; then neofetch; fi

# export PATH="$HOME/.cargo/bin:$PATH"

# # Alias
# alias lc='colorls -lA --sd'


# #auto tmux
# if [ "$TMUX" = "" ]; then tmux; fi

# alias ls='colorls -lA --sd'

# # Powerlevel9k fonts
# POWERLEVEL9K_MODE='nerdfont-complete'


# # Path to your oh-my-zsh installation.
#   export ZSH=/home/raccoon/Projects/dotfiles/github/oh-my-zsh

# # Set name of the theme to load. Optionally, if you set this to "random"
# # it'll load a random theme each time that oh-my-zsh is loaded.
# # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"


# # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# # Example format: plugins=(rails git textmate ruby lighthouse)
# # Add wisely, as too many plugins slow down shell startup.
# plugins=(git zsh-autosuggestions zsh-256color git-flow-avh git-flow-completion)

# source $ZSH/oh-my-zsh.sh

# # ---   ---

# # Powerlevel config
# #
# # Newline
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=falsePOWERLEVEL9K_CONTEXT_TEMPLATE="%n"

# # lines
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰❱❱❱ "


# # (context root_indicator os_icon sshcontent dir aws rbenv vcs)
# PROWELEVEL9K_LEFT_PROMPT_ELEMENTS=(status context root_indicator os_icon sshcontent dir_writable dir aws rbenv vcs)

# # (virtualenv status command_execution_time load public_ip time)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status command_execution_time load public_ip)



# # autoload ----------------------------------------------------------------------
# autoload -Uz vcs_info 
# autoload -Uz colors && colors
# autoload -U compinit && compinit

# # syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# #styles
ZSH_HIGHLIGHT_STYLES[default]=none
# # ZSH_HIGHLIGHT_STYLES[function]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=green
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green
ZSH_HIGHLIGHT_STYLES[alias]=fg=green
ZSH_HIGHLIGHT_STYLES[builtin]=fg=green
#path
ZSH_HIGHLIGHT_STYLES[path]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=cyan
ZSH_HIGHLIGHT_STYLES[path_approx]=fg=cyan
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=240

# # patterns
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red') # To have commands starting with `rm -rf` in red:

# #---- Export ----
# export PATH=$PATH:/Users/jessicadeen/bin

# export PATH="/usr/local/sbin:$PATH"
# #---- End Export ----

# #---- Source ----
# [ -f ~/bin/fubectl.source ] && source ~/bin/fubectl.source
# source <(kubectl completion zsh)
# source $(dirname $(gem which colorls))/tab_complete.sh
# #---- End Source ----
# #---- END CUSTOM ---
