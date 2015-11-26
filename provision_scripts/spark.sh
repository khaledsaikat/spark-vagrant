#!/usr/bin/env bash

echo "Installing Java..."
sudo apt-get install -y default-jre > /dev/null

SPARK_FILENAME="spark-1.5.2-bin-hadoop2.6.tgz"

if [ ! -f /vagrant/etc/$SPARK_FILENAME ]
then
    echo "Downloading spark $SPARK_FILENAME..."
    sudo wget -P /vagrant/etc/ http://apache.openmirror.de/spark/spark-1.5.2/$SPARK_FILENAME > /dev/null
fi

echo "mkdir /home/vagrant/spark"
sudo mkdir /home/vagrant/spark
echo "Extracting $SPARK_FILENAME to /home/vagrant/spark"
sudo tar -xzf /vagrant/etc/$SPARK_FILENAME -C /home/vagrant/spark --strip-components=1

echo "Give permission of spark directory to vagrant user"
sudo chown -R vagrant:vagrant /home/vagrant/spark

echo "Cleanup"
sudo apt-get clean
