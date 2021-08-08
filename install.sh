# /bin/sh

DOTFILES=$(cd "$(dirname "$0")" ; pwd -P)

mkdir .config

# symlinks
ln -s $DOTFILES/.zshrc $HOME/.zshrc
ln -s $DOTFILES/nvim $HOME/.config
ln -s $DOTFILES/.tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES/i3 $HOME

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall

# git
rm -rf $HOME/.gitignore_global && ln -s $DOTFILES/git/gitignore_global $HOME/.gitignore_global
