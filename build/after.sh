sudo apt-get update

# Install java
sudo apt-get install -y default-jre

# Download and extract spark on home directory
sudo wget http://apache.openmirror.de/spark/spark-1.5.2/spark-1.5.2-bin-hadoop2.6.tgz
sudo tar -xzf spark-1.5.2-bin-hadoop2.6.tgz
sudo mv spark-1.5.2-bin-hadoop2.6 /home/vagrant/spark
sudo rm spark-1.5.2-bin-hadoop2.6.tgz
sudo chown -R vagrant:vagrant /home/vagrant/spark/

# Cleanup
sudo apt-get clean
