source common.sh
echo "Vim setup"
echo 'Wiping .vimrc!'
echo "source $ENV_DIR/.vimrc" > ~/.vimrc

mkdir -p ~/.vim
mkdir -p ~/.vim/swp
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cp -r $ENV_DIR/.vim/* ~/.vim

