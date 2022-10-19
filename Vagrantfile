# To Create a Virtual Machine using Vagrant, We need
# Virtual box
# Vagrant - $vagrant --version - to test it
# ruby - dev-kit $ruby --version - to test it

# creating a VM with Linux OS using Ubuntu 16.04LTS

Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
# Creating a Virtual Machine using Ubuntu 

# Adding a private network for nginx, and specifying its ip
 config.vm.network "private_network", ip: "192.168.10.100"

# other config here 
# the first parameter is the relative path of the location of the folder in the local host
# the second parameter is the absolute path of the location of the folder in the virtual machine
 config.vm.synced_folder "app/", "/srv/app", create: true
 config.vm.synced_folder "environment/", "/srv/environment", create: true 


 
end
