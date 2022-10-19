# Automating the tasks

## Creating `provision.sh` file in the local host

- Include the `shebang` at the top of the file
```
#!/bin/bash
```

- Update system & than Upgrade it
```
sudo apt-get update -y   # -y flag is for yes to any prompt
sudo apt-get upgrade -y
```

- Install web-server `Nginx` start it and enable it
```
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

- Install `Python`
```
sudo apt-get install python -y
sudo apt-get install python-software-properties
```

- Install node.js - get node setup file using curl
```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
```

- Install node.js
```
sudo apt-get install nodejs -y
```

- Install Process Manager
```
sudo npm install pm2 -g
```

- Navigate to the `app` directory
```
cd /home/vagrant/app
```

- Install NPM Dependencies
```
sudo npm install
```

## Modifying the `Vagrantfile`

- Add the following code to the `Vagrantfile`
```
# Calling the provision file from the Vagrant file
 config.vm.provision "shell", path: "provision.sh"
```
- The `Vagrantfile` should be like this:

```
# creating a VM with Linux OS using Ubuntu 16.04LTS

Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
# Creating a Virtual Machine using Ubuntu 

# Adding a private network for nginx, and specifying its ip
 config.vm.network "private_network", ip: "192.168.10.100"

# Calling the provision file from the Vagrant file
 config.vm.provision "shell", path: "provision.sh"
  
# The 1st parameter is the relative path of the location of the folder in the local host
# the 2nd parameter is the absolute path of the location of the folder in the virtual machine

 config.vm.synced_folder "./app", "/home/vagrant/app", create: true
 config.vm.synced_folder "./environment", "/home/vagrant/environment", create: true 

 
end
```

- Now we need to destroy any running `vagrant` instances using: `vagrant destroy`

- We need to start a new instance of `vagrant` using: `vagrant up`

- Login to the Virtual Machine using SSH: `vagrant ssh`

- Once logged inside the Virtual Machine: Navigate to app directory `cd app`

- Enter `npm start` and it will start the server.

<p align="center">
  <img src="https://user-images.githubusercontent.com/110366380/196752741-a6795e63-bb63-4baa-bc38-15567f361d85.png">
</p>   
                                                                                                                   
