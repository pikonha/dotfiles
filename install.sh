# /bin/sh

DOTFILES=$(cd "$(dirname "$0")" ; pwd -P)

mkdir .config

# symlinks
ln -s $DOTFILES/.zshrc $HOME/.zshrc
ln -s $DOTFILES/nvim $HOME/.config
ln -s $DOTFILES/.tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES/i3 $HOME

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# git
rm -rf $HOME/.gitignore_global && ln -s $DOTFILES/git/gitignore_global $HOME/.gitignore_global
