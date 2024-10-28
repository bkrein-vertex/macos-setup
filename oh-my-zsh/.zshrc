# Disable PowerLevel10k configuration wizard
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

autoload -Uz compinit
compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Configure path to pyenv 
export PYENV_ROOT="$HOME/.pyenv"

# If you come from bash you might have to change your $PATH.
export PATH="${PYENV_ROOT}/bin:/usr/local/bin:$PATH"
export HISTFILE="$HOME/.zsh_history"

# Don't use a pager for short output that doesn't need it
export LESS=eFRX

# Configure 1Password CLI for SSH authentication
export SSH_AUTH_SOCK="${HOME}/.1password/agent.sock"

# Configure Homebrew for shell
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
plugins=(
  benk
  colorize
  colored-man-pages
  custommisc
  dircycle
  history
  themes
  fancy-ctrl-z
  zsh-autosuggestions
  history-substring-search
  macos
  vertex
)

builtin which -s ansible &>/dev/null && plugins+=(ansible)
builtin which -s asdf &>/dev/null && plugins+=(asdf)
builtin which -s aws &>/dev/null && plugins+=(aws)
builtin which -s brew &>/dev/null && plugins+=(brew mybrew)
builtin which -s docker &>/dev/null && plugins+=(docker)
builtin which -s direnv &>/dev/null && plugins+=(direnv)
builtin which -s git &>/dev/null && plugins+=(git git-extras)
builtin which -s go &>/dev/null && plugins+=(go)
builtin which -s helm &>/dev/null && plugins+=(helm)
builtin which -s http &>/dev/null && plugins+=(httpie)
builtin which -s kubectl &>/dev/null && plugins+=(kubectl customk8s)
builtin which -s nmap &>/dev/null && plugins+=(nmap)
builtin which -s op &>/dev/null && plugins+=(1password)
builtin which -s pip &>/dev/null && plugins+=(pip)
builtin which -s pyenv &>/dev/null && plugins+=(pyenv)
builtin which -s python &>/dev/null && plugins+=(python)
builtin which -s terraform &>/dev/null && plugins+=(terraform customtf)
builtin which -s vagrant &>/dev/null && plugins+=(vagrant)
builtin which -s gh &>/dev/null && plugins+=(gh)

# initialize pyenv for shell
eval "$(pyenv init -)"

# Check for any oh-my-zsh updates & prompt
source $ZSH/oh-my-zsh.sh

# Enable iTerm2 Shell Integrations
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Configure McFly (https://github.com/cantino/mcfly) 
eval "$(mcfly init zsh)"

# PowerLevel10k Configuration
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

