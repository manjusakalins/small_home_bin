find . -name "*.c" | awk '{system("vi "$0" -c '"'"':2sleep'"'"' -c '"'"':argdo normal gg=G'"'"'  -c '"'"':wq!'"'"'")}'
