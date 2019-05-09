gitst=$(git status | grep "git add" | grep "#")
if [[ $gitst == "" ]]; then
	#echo "high version git"
	git status | grep modified | awk '{system("git add \""$2"\"")}'
	git status | grep "deleted:" | awk '{system("git rm \""$2"\"")}'
else
	git status | grep modified | awk '{system("git add \""$3"\"")}'
	git status | grep "deleted:" | awk '{system("git rm \""$3"\"")}'

fi

