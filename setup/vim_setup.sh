ENV_DIR='~/.env'
echo 'Wiping .vimrc!'
echo "source $ENV_DIR/.vimrc" > ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cp -r $ENV_DIR/.vim/* ~/.vim

