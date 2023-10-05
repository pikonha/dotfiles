
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

path=(
  $HOME/.asdf/installs/golang/1.19/packages/bin
  $HOME/.asdf/installs/golang/1.19/go/bin
  $HOME/.asdf/installs/nodejs/19.0.1/bin
  $ASDF_USER_SHIMS
  $HOME/.local/bin
  $HOME/Documents/google-cloud-sdk/bin
  /opt/homebrew/bin
  $path
)

ZSH_THEME="purify"
ZSH_TMUX_AUTOSTART_ONCE=true

plugins=(
  git
  asdf
  ssh-agent
  docker
  docker-compose
  aws
  golang
  tmux
  zsh-syntax-highlighting
  zsh-autosuggestions
)

export ZSH="/Users/lpicollo/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export GPG_TTY=$(tty)

export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export DOCKER_HOST="unix://${HOME}/.colima/docker.sock"
# export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=unix://${HOME}/.colima/docker.sock

alias gmm="git checkout $(git_main_branch) && git pull && git checkout - && git merge origin/$(git_main_branch)"
alias gay="git commit --amend --no-edit"
alias gmc="git merge --continue"
alias gmcp="git merge --continue"
alias gap="ga -p"
alias vim="nvim"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias i3rc="vim ~/.config/i3/config"
alias dev="cd ~/Development"
alias ub="cd ~/Development/ubiquity"
alias vimrc="vim ~/.config/nvim"
alias tmuxrc="vim ~/.tmux/.tmux.conf"
alias k="kubectl"
alias kx="kubectx"
alias gpu='git push --set-upstream origin $(git_current_branch)'
alias gcml="gcm && gl"
alias vstg="kubectx ubiquity-stg && kubectl port-forward vault-0 8200"
alias vdev="kubectx ubiquity-dev && kubectl port-forward vault-0 8200"
alias g.="goland ."
alias g="goland"
alias c.="code ."
alias c="code"
alias yh="yarn hardhat"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'denysdovhan/spaceship-prompt'
zplug 'zsh-users/zsh-completions'
zplug 'g-plane/zsh-yarn-autocompletions'
zplug "MichaelAquilina/zsh-autoswitch-virtualenv"
zplug bobsoppe/zsh-ssh-agent, use:ssh-agent.zsh, from:github

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zstyle :omz:plugins:ssh-agent identities id_ed25519 id_personal

export KUBE_CONFIG_PATH=~/.kube/config

autoload -U +X bashcompinit && bashcompinit
