rm -rf md5
echo "--name--  $(whoami)-x86_64" >> md5
echo "--domain--  editor" >> md5

xhsj-md5sum /usr/bin/vi>> md5
xhsj-md5sum /usr/bin/vim>> md5
xhsj-md5sum /usr/bin/gedit>> md5
xhsj-md5sum /usr/bin/gvim>> md5
xhsj-md5sum /usr/bin/diff>> md5
xhsj-md5sum /usr/bin/python>> md5
xhsj-md5sum /bin/grep >> md5
xhsj-md5sum /bin/sed >> md5
xhsj-md5sum /usr/bin/less >> md5
xhsj-md5sum /bin/more >> md5
xhsj-md5sum /usr/bin/ctags>> md5
xhsj-md5sum /usr/bin/cscope>> md5
xhsj-md5sum /usr/bin/evince>> md5
xhsj-md5sum /usr/lib/libreoffice/program/soffice.bin>> md5
xhsj-md5sum /usr/lib/beyondcompare/BCompare>> md5
xhsj-md5sum /opt/google/chrome/chrome>> md5
xhsj-md5sum /opt/kingsoft/wps-office/office6/et>> md5
xhsj-md5sum /opt/kingsoft/wps-office/office6/wpp>> md5
xhsj-md5sum /opt/kingsoft/wps-office/office6/wps>> md5
xhsj-md5sum /home/manjusaka/opt/foxitsoftware/foxitreader/FoxitReader>> md5
echo "--end--" >> md5

echo "--domain--  compiler" >> md5

xhsj-md5sum /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java>> md5
xhsj-md5sum /usr/lib/jvm/java-8-openjdk-amd64/bin/javac>> md5
xhsj-md5sum /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java>> md5
xhsj-md5sum /usr/lib/jvm/java-7-openjdk-amd64/bin/javac>> md5
xhsj-md5sum /opt/jdk1.6.0_37/bin/java>> md5
xhsj-md5sum /opt/jdk1.6.0_37/bin/javac>> md5
xhsj-md5sum /usr/lib/x86_64-linux-gnu/qt4/bin/qmake>> md5
xhsj-md5sum /usr/bin/qtchooser>> md5
xhsj-md5sum /usr/bin/sip>> md5
xhsj-md5sum /usr/bin/install>> md5
echo "--end--" >> md5
echo "--domain--  cross-compiler" >> md5
echo "--end--" >> md5
echo "--domain--  svn-git" >> md5
xhsj-md5sum /usr/bin/git>> md5
xhsj-md5sum /usr/lib/git-core/git-remote-http>> md5
xhsj-md5sum /usr/lib/git-core/git>> md5
echo "--end--" >> md5


#xhsj-md5sum /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java >> md5
#xhsj-md5sum /usr/lib/jvm/java-8-openjdk-amd64/bin/javac  >> md5
#xhsj-md5sum /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java >> md5
#xhsj-md5sum /usr/lib/jvm/java-7-openjdk-amd64/bin/javac >> md5
#xhsj-md5sum /opt/jdk1.6.0_37/bin/java >> md5
#xhsj-md5sum /opt/jdk1.6.0_37/bin/javac >> md5
#xhsj-md5sum /usr/bin/evince >> md5
#xhsj-md5sum /usr/lib/libreoffice/program/soffice.bin >>md5
#xhsj-md5sum /usr/lib/beyondcompare/BCompare >> md5
#xhsj-md5sum /usr/bin/vi >> md5
#xhsj-md5sum /usr/bin/git >> md5
#xhsj-md5sum /usr/bin/cscope >> md5
#xhsj-md5sum /opt/google/chrome/chrome >> md5
#xhsj-md5sum /opt/kingsoft/wps-office/office6/et >> md5
#xhsj-md5sum /opt/kingsoft/wps-office/office6/wpp >> md5
#xhsj-md5sum /opt/kingsoft/wps-office/office6/wps >> md5
#xhsj-md5sum /home/manjusaka/opt/foxitsoftware/foxitreader/FoxitReader >>md5
#xhsj-md5sum /usr/lib/x86_64-linux-gnu/qt4/bin/qmake >> md5
#xhsj-md5sum /usr/bin/qtchooser >> md5
#xhsj-md5sum /usr/bin/sip >> md5
#xhsj-md5sum /usr/bin/install >> md5
