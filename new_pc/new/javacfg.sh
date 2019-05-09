#!/bin/bash
JAVA_HOME="/opt/jdk1.6.0_37/bin"
cd $JAVA_HOME
for file in $(ls)
do 
	update-alternatives --install /usr/bin/$file $file /opt/jdk1.6.0_37/bin/$file 1
done

