#!/bin/bash

sudo su -
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
sudo yum install -y jdk-8u141-linux-x64.rpm
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.13/bin/apache-tomcat-10.0.13.tar.gz
ls
tar -xvzf apache-tomcat-10.0.13.tar.gz 
ls
mv apache-tomcat-10.0.13 tomcat
ls
cd tomcat
ls
cd bin
./startup.sh