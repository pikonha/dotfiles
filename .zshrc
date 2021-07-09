# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/LUCAS.PICOLLO/.oh-my-zsh"
export PATH="$PATH:/home/LUCAS.PICOLLO/.asdf/installs/golang/1.16.3/packages/bin:$HOME/.asdf/installs/nodejs/16.0.0/.npm/bin:$HOME/.asdf/installs/python/3.9.5/bin:$ASDF_USER_SHIMS"

ZSH_THEME="purify"


plugins=(git asdf ssh-agent docker docker-compose aws rails golang virtualenv tmux)
export EDITOR=vim

ZSH_TMUX_AUTOSTART_ONCE=true

zstyle :omz:plugins:ssh-agent identities id_rsa

source $ZSH/oh-my-zsh.sh

alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias dev="cd ~/Development"
alias vimrc="vim ~/.config/nvim"
alias tmuxrc="vim ~/.tmux.conf"

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

export JFROG_USERNAME=lucas.picollo

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk


zinit light denysdovhan/spaceship-prompt
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit ice atload"zpcdreplay" atclone'./zplug.zsh'
zinit light g-plane/zsh-yarn-autocompletions

function virtualenv_info {
[ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV`’) ‘
}

. $HOME/.asdf/asdf.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/LUCAS.PICOLLO/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/LUCAS.PICOLLO/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/LUCAS.PICOLLO/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/LUCAS.PICOLLO/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
