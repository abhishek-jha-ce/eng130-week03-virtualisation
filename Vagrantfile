# To Create a Virtual Machine using Vagrant, We need
# Virtual box
# Vagrant - $vagrant --version - to test it
# ruby - dev-kit $ruby --version - to test it

# creating a VM with Linux OS using Ubuntu 16.04LTS

# Vagrant Configuration Script
Vagrant.configure("2") do |config|
    # Configuration Script for app
    config.vm.define "app" do |app|
        app.vm.box = "ubuntu/bionic64"
        app.vm.network "private_network", ip: "192.168.10.100"
        app.vm.synced_folder "./app", "/home/vagrant/app", create: true
        app.vm.synced_folder "./environment", "/home/vagrant/environment", create: true
        app.vm.provision "shell", path: "provision.sh", privileged: false
    end

    # Configuration Script for database
    config.vm.define "db" do |db|
        db.vm.box = "ubuntu/bionic64"
        db.vm.network "private_network", ip: "192.168.10.150"
    end
end

# Code used previously - only one virtual machine
#  config.vm.box = "ubuntu/xenial64"
# # Creating a Virtual Machine using Ubuntu 

# # Adding a private network for nginx, and specifying its ip
#  config.vm.network "private_network", ip: "192.168.10.100"

# # Calling the provision file from the Vagrant file
#  config.vm.provision "shell", path: "provision.sh"

# # other config here 
# # the first parameter is the relative path of the location of the folder in the local host
# # the second parameter is the absolute path of the location of the folder in the virtual machine
#  config.vm.synced_folder "./app", "/home/vagrant/app", create: true
#  config.vm.synced_folder "./environment", "/home/vagrant/environment", create: true 


 
# end
