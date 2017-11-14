<img src="https://root-forum.cern.ch/uploads/default/original/2X/3/3fb82b650635bc6d61461f3c47f41786afad4548.png" align="right"  height="50"/>

## ROOT Virtual Machine Setup with Vagrant

This repository contains recipes to start virtual machines that can be used for
ROOT development on Ubuntu 16 and CentOS 7. In order to start these virtual
machines, you will need to install both [VirtualBox](https://www.virtualbox.org)
and [Vagrant](https://www.vagrantup.com).

## Starting a Virtual Machine

After installing VirtualBox and Vagrant, the virtual machine can be started by
going into the directory with the file `Vagrantfile` and performing the
following commands:

```
$ vagrant up
$ vagrant ssh
```

Once an image is no longer needed, it can be destroyed with

```
$ vagrant destroy
```

The contents of the directory where `vagrant ssh` was run is visible inside
the image at `/vagrant`.

For more information about how to use vagrant, please visit
https://www.vagrantup.com/docs/index.html.

Happy hacking!

