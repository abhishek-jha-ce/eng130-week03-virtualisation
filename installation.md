# Installations required for Virtualisation

## Vagrant

Vagrant is a tool for building and managing virtual machine environments in a single workflow. With an easy-to-use workflow and focus on automation, Vagrant lowers development environment setup time and increases productivity.

- We can download **Vagrant** from: https://www.vagrantup.com/downloads
- The latest release at the time of installing is: 2.3.1
- After installation, we can check for the version:

<p align="center">
  <img src="https://user-images.githubusercontent.com/110366380/196234502-4a515e78-328f-4f37-aab4-04691497df9a.png">
</p>

- We have to make sure we **ALWAYS** run the vagrant terminal as an administrator, to make sure we have the proper adminstrative previlidges.
- We can also test the vagrant installation by typing `vagrant` in the git bash.
```
$ vagrant
Usage: vagrant [options] <command> [<args>]

    -h, --help                       Print this help.

Common commands:
     autocomplete    manages autocomplete installation on host
     box             manages boxes: installation, removal, etc.
     cloud           manages everything related to Vagrant Cloud
     destroy         stops and deletes all traces of the vagrant machine
     global-status   outputs status Vagrant environments for this user
     halt            stops the vagrant machine
     help            shows the help for a subcommand
     init            initializes a new Vagrant environment by creating a Vagrantfile
     login
     package         packages a running vagrant environment into a box
     plugin          manages plugins: install, uninstall, update, etc.
     port            displays information about guest port mappings
     powershell      connects to machine via powershell remoting
     provision       provisions the vagrant machine
     push            deploys code in this environment to a configured destination
     rdp             connects to machine via RDP
     reload          restarts vagrant machine, loads new Vagrantfile configuration
     resume          resume a suspended vagrant machine
     serve           start Vagrant server
     snapshot        manages snapshots: saving, restoring, etc.
     ssh             connects to machine via SSH
     ssh-config      outputs OpenSSH valid configuration to connect to the machine
     status          outputs status of the vagrant machine
     suspend         suspends the machine
     up              starts and provisions the vagrant environment
     upload          upload to machine via communicator
     validate        validates the Vagrantfile
     version         prints current and latest Vagrant version
     winrm           executes commands on a machine via WinRM
     winrm-config    outputs WinRM configuration to connect to the machine

For help on any individual command run `vagrant COMMAND -h`

Additional subcommands are available, but are either more advanced
or not commonly used. To see all subcommands, run the command
`vagrant list-commands`.
        --[no-]color                 Enable or disable color output
        --machine-readable           Enable machine readable output
    -v, --version                    Display Vagrant version
        --debug                      Enable debug output
        --timestamp                  Enable timestamps on log output
        --debug-timestamp            Enable debug output with timestamps
        --no-tty                     Enable non-interactive output
```

## Ruby

We must have a modern Ruby Version >= 2.2 in order to develop and build Vagrant. We can download it from:

https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.6-1/rubyinstaller-devkit-2.6.6-1-x64.exe

- To check for successful installation, we can check the installed version on our git-bash terminal, by typing: `ruby --version`

<p align="center">
  <img src="https://user-images.githubusercontent.com/110366380/196242136-35259d19-0268-4615-a7d2-45e59565620b.png">
</p>


## Virtual Box

- Download the Virtual Box 6.1.40 From https://www.virtualbox.org/wiki/Download_Old_Builds_6_1
- A successful installation dialog box will show the status of successful installation.
