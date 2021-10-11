#!/bin/bash
#sudo apt-get update -y 
#sudo apt install default-jre -y && sudo apt install git -y 
#java –version

sudo apt-get update -y
rm -r /usr/lib/jvm/java-11-*
sudo apt-get install -y maven
mvn -version

cat > /etc/profile.d/maven.sh <<EOL
         M2_HOME=/usr/share/maven
         MAVEN_HOME=/usr/share/maven
         PATH=$PATH:/usr/share/maven
EOL
     echo "give the permission"
     chmod +x /etc/profile.d/maven.sh
     echo "run the source"
     source /etc/profile.d/maven.sh
     mvn -version





echo "Installing JAVA"
sudo apt-get update -y
sudo apt install openjdk-8-jdk openjdk-8-jre -y

echo 'set the environment'
    cat >> /etc/environment <<EOL
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
EOL
    source /etc/environment
    echo $JAVA_HOME
    echo 'Java version'
    java -version
    echo $JAVA_HOME
    echo 'Java version'
    java -version



    apt-get install -y  git
    echo 'Git version'
    git --version


    
    curl -sL https://deb.nodesource.com/setup_10.x | bash -
    sudo apt install nodejs -y

    echo 'Installing Nodejs'
    
    echo 'nginx has already been installed'
        apt-get install nginx -y 
        echo 'nginx Version'
        nginx -v




echo "Installing Tomcat"

cd /opt/
wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.8/bin/apache-tomcat-9.0.8.tar.gz
tar -xvf apache-tomcat-9.0.8.tar.gz
mv apache-tomcat-9.0.8 tomcat
rm -f apache-tomcat-9.0.8.tar.gz


#apt update -y
    apt-get install -y  mysql-server
    echo 'mysql version'
    mysql --version
mysql -uroot  <<MY_QUERY
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'techmango';
create user 'dcuat'@'%' identified by 'techmango';
CREATE DATABASE exc;
flush privileges;
MY_QUERY
   #ALTER USER 'root'@'localhost' IDENTIFIED BY 'NewPassword';
#flush privileges;
#exit;
