#!/usr/bin/env bash

##
# Installing openjdk-8
##

# Add aopenjdk to repository for ubuntu 14.04 and earlier
echo "Add openjdk to apt-get repository and update the repository."
sudo add-apt-repository ppa:openjdk-r/ppa > /dev/null
sudo apt-get update > /dev/null

echo "Installing Java (openjdk-8)..."
sudo apt-get install openjdk-8-jdk -y > /dev/null


##
# Create temp directory
##
if [ ! -d /vagrant/temp ]; then
    echo "Create temp directory"
    mkdir /vagrant/temp
fi


##
# Installing Spark
##
SPARK_FILENAME="spark-1.5.2-bin-hadoop2.6.tgz"

# Download spark tar file
if [ ! -f /vagrant/temp/$SPARK_FILENAME ]; then
    echo "Downloading $SPARK_FILENAME..."
    sudo wget -P /vagrant/temp/ http://apache.openmirror.de/spark/spark-1.5.2/$SPARK_FILENAME > /dev/null
fi

# Extract spark to /opt/spark and give permission to vagrant
if [ ! -f /opt/spark/bin/spark-shell ]; then
    echo "mkdir /opt/spark"
    sudo mkdir /opt/spark
    echo "Extracting $SPARK_FILENAME to /opt/spark"
    sudo tar -xzf /vagrant/temp/$SPARK_FILENAME -C /opt/spark --strip-components=1

    echo "Give permission of spark directory to vagrant user"
    sudo chown -R vagrant:vagrant /opt/spark
fi

# Add spark to system path
if [ ! -p /opt/spark/bin ]; then
    sudo echo 'PATH="/opt/spark/bin:$PATH"' >> /home/vagrant/.profile
    source /home/vagrant/.profile
fi


##
# Installing Maven
##
MAVEN_FILENAME="apache-maven-3.3.9-bin.tar.gz"

# Download maven tar file
if [ ! -f /vagrant/temp/$MAVEN_FILENAME ]; then
    echo "Downloading $MAVEN_FILENAME..."
    sudo wget -P /vagrant/temp/ http://apache.openmirror.de/maven/maven-3/3.3.9/binaries/$MAVEN_FILENAME > /dev/null
fi

# Extract maven to /opt/maven
if [ ! -f /opt/maven/bin/mvn ]; then
    echo "mkdir /opt/maven"
    sudo mkdir /opt/maven
    echo "Extracting $MAVEN_FILENAME to /opt/maven"
    sudo tar -xzf /vagrant/temp/$MAVEN_FILENAME -C /opt/maven --strip-components=1
fi

# Add maven to system path
if [ ! -f /usr/local/bin/mvn ]; then
    echo "Create symbolic link of mvn in /usr/local/bin"
    sudo ln -s /opt/maven/bin/mvn /usr/local/bin/mvn
fi

# Installl by apt-get
#sudo apt-get install -y maven > /dev/null

# Add aopenjdk to repository for ubuntu 14.04 and earlier
echo "Add latest repo for gradle."
sudo add-apt-repository ppa:cwchien/gradle -y > /dev/null
sudo apt-get update > /dev/null

echo "Installing gradle"
sudo apt-get install gradle -y > /dev/null

##
# Cleanup
##
echo "Cleanup"
sudo apt-get clean
