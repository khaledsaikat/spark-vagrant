# Spark-Vagrant

## About

Vagrant box with spark pre-installed

### This vagrant box includes:

- Ubuntu 14.04 LTS (trusty64)
- Java
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

### Running spark-shell
Spark has been installed on home directory. After ssh to virtual machine, run following commands:

```
cd ~/spark
./bin/spark-shell
```
