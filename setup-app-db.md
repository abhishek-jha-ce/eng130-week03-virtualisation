# Setting up 2 Separate Virtual Machine `app` & `db` and connecting them.

Pre-requisite: If any previous instance of **Virtual Machine** is running, destroy it using `vagrant destroy`.

**Step 1**: Modify the exiting `Vagrant File`, to create 2 different virtual machine `app` and `db`.

```
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

    # Configure Script for database
    config.vm.define "db" do |db|
        db.vm.box = "ubuntu/bionic64"
        db.vm.network "private_network", ip: "192.168.10.150"
    end
end
```
- Make sure the indentation format is properly followed.
- The location of the file should be correctly identified.

**Note**: If using `Mac OS`, the `ip address` will be different.

**Step 2**: In the `provision.sh` file, update the `node.js` link to `12.x` from `6.x` used previously.

```
# Latest Version, Used when running two VM: app and database
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
```
- Rest of the `provision.sh` file is similar to the one previously Used.


**Step 3**: Create both the Virtual Machine, using `vagrant up` command. If only one VM shows, do it individually for the one not up and running `vagrant up db`.

- Check both of the Virtual Machine are running properly using `vagrant status`.

```
$ vagrant status
Current machine states:

app                       running (virtualbox)
db                        running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
```

## Checking the `app` Virtual Machine

**Step 4**: Login to the app VM, `vagrant ssh app`. Navigate to the `app.js` location and run the app by typing `npm start`.

**Note**: If we get error like, `npm is not a recognized command` or similar, it means `provision.sh` file didn't worked properly. Manual Installation is required.

```
Manually install the files that's mentioned in the `provision.sh` file.

# update system
sudo apt-get update -y

# upgrade system
sudo apt-get upgrade -y

# install web-server called Nginx
sudo apt-get install nginx -y

# restart nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Install python
sudo apt-get install python -y
sudo apt-get install python-software-properties

# Install node.js
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# Install Process Manager

sudo npm install pm2 -g
```

- After `npm start` is run we get a message `Your app is ready and listening on port 3000`.
- To make sure it's working we can check the `ip:port` in the browser.

<p align="center">
  <img src="https://user-images.githubusercontent.com/110366380/197001278-f5cb993f-e93e-48b3-920c-511c4c386d0b.png">
</p>


## Setting up the `db` Virtual Machine

**Step 5**: In a new terminal, sign in to the `database Virtual Machine` using `vagrant ssh db`.

**Step 6**: Once inside the `db` Virtual Machine, install the database, following the commands:

```
# Add the Key:

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927  # A confirmation of import will be displayed

# Make Sure its Working
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# It will display back - deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse

# Update and Upgrade the system
sudo apt-get update -y
sudo apt-get upgrade -y

# Install database - sudo apt-get install mongodb-org=3.2.20 -y
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
```

**Step 7**: After installation is complete, check the status of the database.

```
sudo systemctl status mongod

# It might show Active: inactive (dead)1  # First time of running
```

- Now Follow the following step by step:
```
sudo systemctl start mongod
sudo systemctl status mongod
sudo systemctl enable mongod
```

## Changing the configuration

**Step 8**: Change the `mongod.conf` file. It's inside the `etc` folder.

```
sudo nano etc/mongod.conf
```

- change the network interfaces
```
# network interfaces
net:
 port: 27017
 bindIp: 127.0.0.1 
 
# Change it to 0.0.0.0 which means allow access to everyone.

# network interfaces
net:
 port: 27017
 bindIp: 0.0.0.0 
```

 - Use cat to check if its changed to `0.0.0.0`. `$ cat nano etc/mongod.conf` 
 
**Step 9**: Restart mongo db.
```
sudo systemctl restart mongod
sudo systemctl enable mongod
```

## Setting up the environment variable

**Step 10**: We need to set up the environment variable so that the app can connect to the database. In the app VM, navigate to the app.js location

- If the app is running, stop it using `CTRL + Z`
- Create an environment variable called `DB_HOST=mongodb://192.168.10.150:27017/posts`
- We can persist the environment variable in `.bashrc` file if needed.
- To check, if it is set up properly use `printenv DB_HOST`

```
vagrant@ubuntu-bionic:~/app$ printenv DB_HOST
mongodb://192.168.10.150:27017/posts
```

## Checking the Connection between app and database

- Run `npm start`
- Restart the app and open a browser, enter the following URL: `http://192.168.10.100:3000/posts`

<p align="center">
    <img src="https://user-images.githubusercontent.com/110366380/196987908-daef1908-476b-46f0-9dad-b03ae2fd57c6.png"
</p>

- If we see this page, that means the `database` is successfully connected to the `app`. We can't see the content yet. To get the contents:
- Stop the currently running App, and type `node seeds/seed.js` on the same terminal (same location).
- We should now see the content of the database if we refresh the browser with the following url: `http://192.168.10.100:3000/posts`
    
<p align="center">
    <img src="https://user-images.githubusercontent.com/110366380/196987908-daef1908-476b-46f0-9dad-b03ae2fd57c6.png"
</p>
 
**Note**: If reverse proxy is steup in `nginx`, we don't need to specify the port number `3000`.   
