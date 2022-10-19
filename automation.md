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

