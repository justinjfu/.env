source common.sh
echo "NeoVim setup"

mkdir -p ~/.config
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/autoload
cp -r $ENV_DIR/nvim/* ~/.config/nvim

# install plugged
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PluginInstall +qall



