# Virtualisation

To make use of virtuallisation, we need the following tools installed in our localhost.
- SSH
- Git
- Bash
- Ruby - dev-kit is required for Vagrant
- VirtualBox
- Vagrant

Check the *installation.MD* file to see how to install **Ruby**, **Vagrant**, and **Virtual Box**.

## Setting up the Development Environment using "Vagrant - Virtual Box"

<p align="center">
  <img src="https://user-images.githubusercontent.com/110366380/196476593-f0cd1530-5d65-4e22-93f8-dc77499ecc6a.png">
</p>

### To setup the environment as shown above:

- Navigate to the folder where we want to create the vagrant file and create the `Vagrantfile`:
```
$ nano Vagrantfile

It will create the file and open nano editor, where we can edit the file.
```
**Note**: To Save in `nano editor` use `CTRL + O` and to exit use `CTRL + X`

- Add the following code in the `Vagrantfile`, to create a new Ubuntu Virtual Machine. The `Ruby` code instructs the `Virtual Box` to create a new VM via `Vagrant`.
```
# creating a VM with Linux OS using Ubuntu 16.04LTS

Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
```
- To make sure we have saved it correctly we can use `cat` command on the `bash` to check it again.
```
$ cat Vagrantfile
# To Create a Virtual Machine using Vagrant, We need
# Virtual box
# Vagrant - $vagrant --version - to test it
# ruby - dev-kit $ruby --version - to test it

# creating a VM with Linux OS using Ubuntu 16.04LTS

Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
# Creating a Virtual Machine using Ubuntu


end
```
- Now, to create the virtual machine using the above configuration, we run the command `vagrant up`
```
$ vagrant up
```
It will take some time to load up the `Virtual Machine`. If we don't get any error in the terminal, then the VM is set up. There are 2 ways to check if it is set up correctly.

1. Through Virtual Box - We can see a running Virtual Machine in the Virtual Box.

![image](https://user-images.githubusercontent.com/110366380/196485550-55fbca15-7914-44ae-8db5-cac9c8a77591.png)

2. Through the `git bash terminal` by typing the command `vagrant status`.

```
$ vagrant status
Current machine states:

default                   running (virtualbox)

The VM is running. To stop this VM, you can run `vagrant halt` to
shut it down forcefully, or you can run `vagrant suspend` to simply
suspend the virtual machine. In either case, to restart it again,
simply run `vagrant up`.
```
