# Spark-Vagrant

## About

Vagrant box with spark pre-installed

### This vagrant box includes:

- Ubuntu 14.04 LTS (trusty64)
- Java (openjdk-8)
- maven 3.3.9
- Spark-1.5.2 for Hadoop-2.6+

## Requirements

- Download and install the latest [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Download and install thelatest [Vagrant](http://www.vagrantup.com/downloads.html)
- Make sure virtualization is enabled in your BIOS.

## Get Started

After installing requirements and cloning this repository, we need to make a vagrant box and install spark and dependencies into it.
To do this, run following commands from project root

Go to the project root and run:

```
vagrant up
```

With this simple command, we are creating a ubuntu instance, download and install java, spark and necessary dependencies into it.

ssh to virtual machine:

```
vagrant ssh
```

To stop the virtual machine:

```
vagrant halt
```

To start again:

```
vagrant up
```

To provision the vm:

```
vagrant provision
```

### Running spark-shell
Spark has been installed on /opt/spark directory and bin directory has been added to system path. After ssh to virtual machine, run following commands:

```
spark-shell
```

Or with full path

```
cd /opt/spark
./bin/spark-shell
```

### Directory: projects

projects directory is synchronized with virtual machine's /home/vagrant/projects directory. That means, any changes made on inside projects directory will immediately reflect on VM and vice versa.
