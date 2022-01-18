export ZSH="/home/picollo/.oh-my-zsh"

path=(
  $HOME/.asdf/installs/golang/**/packages/bin
  $HOME/.asdf/installs/nodejs/**/.npm/lib
  $ASDF_USER_SHIMS
  $HOME/.local/bin
  $path
)

ZSH_THEME="purify"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

plugins=(
  git
  asdf
  ssh-agent
  docker
  docker-compose
  aws
  rails
  golang
  virtualenv
  tmux
  zsh-syntax-highlighting
  zsh-autosuggestions
)
export EDITOR=vim

ZSH_TMUX_AUTOSTART_ONCE=true

zstyle :omz:plugins:ssh-agent identities id_ed25519 github

source $ZSH/oh-my-zsh.sh

alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias i3rc="vim ~/.config/i3/config"
alias dev="cd ~/dev"
alias ba="cd ~/dev/blockatlas"
alias vba="cd ~/dev/blockatlas && vim ."
alias xcp="xclip -selection c"
alias vimrc="vim ~/.config/nvim"
alias tmuxrc="vim ~/.tmux.conf"
alias k="kubectl"
complete -F __start_kubectl k

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


function virtualenv_info {
[ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV`’) ‘
}

. $HOME/.asdf/asdf.sh


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

source ~/.zplug/init.zsh

zplug 'denysdovhan/spaceship-prompt'
zplug 'zsh-users/zsh-completions'
zplug 'g-plane/zsh-yarn-autocompletions'
zplug "MichaelAquilina/zsh-autoswitch-virtualenv"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

export GOPRIVATE=gitlab.com,go.blockdaemon.com
export KUBE_CONFIG_PATH=~/.kube/config

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
