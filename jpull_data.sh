adb shell stop;
adb shell "tar -c /data/data/ /data/misc/ data/system/ /data/user_de/ /data/dalvik-cache /data/nativetest/ /data/benchmarktest/ > /data/aa.tar"
adb pull /data/aa.tar
tar xvf aa.tar
