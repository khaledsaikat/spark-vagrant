# Spark-Vagrant

## About

Vagrant box with spark pre-installed

### This vagrant box includes:

- Ubuntu 14.04 LTS (ubuntu/trusty64)
- Java
- Spark-1.5.2 for Hadoop-2.6+

## Requirements

- [Vagrant](http://www.vagrantup.com/downloads.html)
- [VirtualBox 5.x](https://www.virtualbox.org/wiki/Downloads)

## Get Started

### Installation

After installing requirements and cloning this repository, we need to make a vagrant box and install spark and dependencies on it.
To do this, run following commands from project root

Go to build directory:

```
cd build
```

Create a ubuntu instance with spark pre-installed:

```
vagrant up
```

With this simple command, we are creating a ubuntu instance, download and install java, spark and necessary dependencies. To avoid downloading everytime, we can package our newly created instance. To do that, run following command:

```
bash package.sh
```

### Daily Uses

Go to project root directory

```
cd ..
```

Create virtual machine:

```
vagrant up
```

ssh to virtual machine:

```
vagrant ssh
```

#### Running spark-shell
Spark has been installed on home directory. After ssh to virtual machine, run following commands:

```
cd ~/spark
./bin/spark-shell
```
