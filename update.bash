git pull origin master

git submodule init
git submodule update

rm ../.vimrc
ln .vimrc ..

vim +PluginInstall +qall

{
    cd bundle
    git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
}