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

end
