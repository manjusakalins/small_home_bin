echo "usage, please input full path:
	sh xx.sh /home/xxx/work/yyy/"

code_dir="~/4Tdata/my_codes/in_bitbucket"
vim_dir="~/4Tdata/vim_stuff"
echo $#
if [ "$#" -gt 1 ];then
	code_dir=$1
	vim_dir=$2
fi

mkdir -p $vim_dir/vimswap
mkdir -p $vim_dir/vimundo
mkdir -p $vim_dir/vimbackup
mkdir -p $vim_dir/vimviews
mkdir -p $vim_dir/sessions
mkdir -p $vim_dir/viminfos
mkdir -p $vim_dir/bundle
mkdir -p $vim_dir/vimtop


#rm -rf ~/.vim/bundle
#ln -s $vim_dir/bundle ~/.vim/bundle

rm -rf ~/.vimswap ~/.vimundo ~/.vimviews ~/.vimbackup ~/.vim
#ln -s $vim_dir/sessions ~/.vim/sessions
#ln -s $vim_dir/viminfos ~/.vim/viminfos
ln -s $vim_dir/vimswap ~/.vimswap
ln -s $vim_dir/vimundo ~/.vimundo
ln -s $vim_dir/vimbackup ~/.vimbackup
ln -s $vim_dir/vimviews ~/.vimviews
ln -s $vim_dir/vimtop ~/.vim

rm -rf ~/.vimrc.bundles.local ~/.vimrc.before.local ~/.vimrc.local
ln -s $code_dir/myvim/spf13/vimrc.before.local ~/.vimrc.before.local
ln -s $code_dir/myvim/spf13/vimrc.bundles.local ~/.vimrc.bundles.local
ln -s $code_dir/myvim/spf13/vimrc.local ~/.vimrc.local

####mv  ~/bin ~/bk_bin
#rm -rf ~/bin
####ln -s $code_dir/my_home_bin ~/bin
ln -s $code_dir/my_home_bin/vim_gen_cscopse_ctags_sessionman.sh ~/bin/
#ln -s ~/bin/.kermrc ~/.kermrc
#ln -s ~/bin/sprdrc ~/sprdrc
#mv ~/.bashrc ~/bkbashrc
#ln -s ~/bin/bashrc ~/.bashrc
#mkdir -p ~/.android
#ln -s $code_dir/my_home_bin/usb_adb.ini ~/.android/usb_adb.ini

cd $code_dir/spf13-vim/
git checkout -b v3 remotes/origin/3.0
sh spf13-vim.sh
#vim +BundleInstall! +BundleClean +q
mkdir -p ~/.vim/sessions
mkdir -p ~/.vim/viminfos

