echo $1
find -L $1 -name '*.c' -o -name '*.cpp'  -o -name '*.cc' -o -name '*.java' -o -name '*.h' -o -name '*.mk' > cscope.files
cscope -bkqPC 
# cscope -R is for recursive dir search but as we got cscope.files.
#ctags -R --exclude=.git
#need call cscope
echo "ctags -R --exclude=.git"
ctags -R $1

echo "please call cscope"
cscope
mv cscope.out ~/.vim/viminfos/$2/$2.cscope.out
mv tags ~/.vim/viminfos/$2/$2.tags

