echo "usage, please input full path:
sh xx.sh /home/xxx/yy/xx"
echo $#
if [ "$#" -gt 0 ];then
	target_dir=$1
else
	exit
fi

mkdir -p ~/$target_dir/vim_stuff/vimswap
mkdir -p ~/$target_dir/vim_stuff/vimundo
mkdir -p ~/$target_dir/vim_stuff/vimbackup
mkdir -p ~/$target_dir/vim_stuff/vimviews
mkdir -p ~/$target_dir/vim_stuff/sessions
mkdir -p ~/$target_dir/vim_stuff/viminfos
mkdir -p ~/$target_dir/vim_stuff/bundle


#rm -rf ~/.vim/bundle
#ln -s ~/$target_dir/vim_stuff/bundle ~/.vim/bundle

rm -rf ~/.vimswap ~/.vimundo ~/.vimviews ~/.vimbackup
#ln -s ~/$target_dir/vim_stuff/sessions ~/.vim/sessions
#ln -s ~/$target_dir/vim_stuff/viminfos ~/.vim/viminfos
ln -s ~/$target_dir/vim_stuff/vimswap ~/.vimswap
ln -s ~/$target_dir/vim_stuff/vimundo ~/.vimundo
ln -s ~/$target_dir/vim_stuff/vimbackup ~/.vimbackup
ln -s ~/$target_dir/vim_stuff/vimviews ~/.vimviews

rm -rf ~/.vimrc.bundles.local ~/.vimrc.before.local ~/.vimrc.local
ln -s ~/$target_dir/myvim/spf13/vimrc.before.local ~/.vimrc.before.local
ln -s ~/$target_dir/myvim/spf13/vimrc.bundles.local ~/.vimrc.bundles.local
ln -s ~/$target_dir/myvim/spf13/vimrc.local ~/.vimrc.local

mv  ~/bin ~/bk_bin
#rm -rf ~/bin
ln -s ~/$target_dir/my_home_bin ~/bin
ln -s ~/bin/.kermrc ~/.kermrc
ln -s ~/bin/sprdrc ~/sprdrc
mv ~/.bashrc ~/bkbashrc
ln -s ~/bin/bashrc ~/.bashrc
mkdir -p ~/.android
ln -s ~/$target_dir/my_home_bin/usb_adb.ini ~/.android/usb_adb.ini

cd ~/$target_dir/spf13-vim/
git checkout -b v3 remotes/origin/3.0
sh spf13-vim.sh
#vim +BundleInstall! +BundleClean +q
mkdir -p ~/.vim/sessions
mkdir -p ~/.vim/viminfos

