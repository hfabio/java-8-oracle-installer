#! /bin/sh
FILE_NAME=jdk-8u251-linux-x64.tar.gz
JAVA_HOME=/usr/lib/jvm/java-8-oracle

clear


if [[ $EUID -eq 0 ]]; then
  sudo mkdir -p $JAVA_HOME
  tar -xvzf $FILE_NAME
  sudo mv jdk1.8.0_251/* $JAVA_HOME
  sudo wget https://raw.githubusercontent.com/hfabio/java-8-oracle-installer/master/jdk.sh -0 /etc/profile.d/jdk.sh
  sudo chmod 775 /etc/profile.d/jdk.sh
  sudo ln -s $JAVA_HOME/bin/java /usr/bin/java
  sudo ln -s $JAVA_HOME/bin/javac /usr/bin/javac

  clear

  java -version
  javac -version
else
  notify-send "Please, use this script as ROOT, try using sudo ./installer.sh"
  echo "Please, use this script as ROOT, try using sudo ./installer.sh"
