
echo "usage: sh jjs.sh [n] : default n is 1, if the target java index is not 1, the type sh jjs.sh n"
echo $0
if [ $# -eq 0 ] ;then
	echo "1" | sudo update-alternatives --config java
	echo "1" | sudo update-alternatives --config jar
	echo "1" | sudo update-alternatives --config javac
	echo "1" | sudo update-alternatives --config javap
	echo "1" | sudo update-alternatives --config javah
	echo "1" | sudo update-alternatives --config javadoc
	echo "now we switched to index 1"
else
	echo $1
	echo $1 | sudo update-alternatives --config java
	echo $1 | sudo update-alternatives --config jar
	echo $1 | sudo update-alternatives --config javac
	echo $1 | sudo update-alternatives --config javap
	echo $1 | sudo update-alternatives --config javah
	echo $1 | sudo update-alternatives --config javadoc
	echo "now we switched to index "$1

fi

