echo "usage, please input full path:
sh xx.sh /home/xxx/work/yyy/"
#target_dir="/home/$(whoami)/4Tdata/my_codes/in_bitbucket"
echo $#
if [ "$#" -gt 0 ];then
	target_dir=$1
else
	exit
fi
echo $target_dir
start_char=$(expr substr "$target_dir" 1 1)

if [ $start_char != "/" ]; then
	echo "we need full path"
	exit 1;
fi
mkdir -p $target_dir;
mkdir -p $target_dir/vim_stuff
cd $target_dir
git clone https://manjusaka_lin@bitbucket.org/manjusaka_lin/my_home_bin.git
git clone https://manjusaka_lin@bitbucket.org/manjusaka_lin/myvim.git
git clone https://manjusaka_lin@bitbucket.org/manjusaka_lin/spf13-vim.git

ls | awk '{system("cd "$1"; git pull;cd -")}'
cd -

if [ "$#" -gt 0 ];then
	bash _5.1_ssd_vimrc.sh $target_dir $target_dir/vim_stuff
else
	echo "!!!!!!!!!!!!!!!!!!!! error !!!!!!!!!!!!!!!"
	return
fi
