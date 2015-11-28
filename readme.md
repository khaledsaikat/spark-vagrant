# Spark-Vagrant

## About

Vagrant box with spark pre-installed

### This vagrant box includes:

- Ubuntu 14.04 LTS (trusty64)
- Java (openjdk-8)
- Maven 3.3.9
- Spark-1.5.2 for Hadoop-2.6+
- Git

## Requirements

- Download and install the latest [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Download and install the latest [Vagrant](http://www.vagrantup.com/downloads.html)
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
Spark has been installed on ```/opt/spark``` directory and bin directory has been added to system path. After ssh to virtual machine, run following commands:

```
spark-shell
```

Or with full path

```
cd /opt/spark
./bin/spark-shell
```

### Directory: projects

projects directory is synchronized with virtual machine's ```/home/vagrant/projects``` directory. That means, any changes made on inside projects directory will immediately reflect on VM and vice versa.

## Ubuntu 12.04 LTS (precise32)

If there are some issues for using ubuntu 14.04 or latest one, Ubuntu 12.04 could be useful. hashicorp/precise32 box can run without enabling virtualization.

To use hashicorp/precise32 checkout ```ubuntu-12.04``` branch on local machine:

```
git checkout ubuntu-12.04
```

If one VM is already running, we need to destroy that first, to do that:

```
vagrant destroy
```

Then create VM

```
vagrant up
```

ssh to VM:

```
vagrant ssh
```
