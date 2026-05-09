# Damo's Linux Workstation Setup

This will manage a local desktop installation at the user and system levels
using [Ansible](https://docs.ansible.com/projects/ansible/latest/).  At the
user level, preferences and user settings are managed. At the system level,
configuration and packages are managed. This makes installing a new desktop
Linux machine much easier, even when the user has multiple machines. This
script is to be run locally on each machine.

This repository contains a user and system configuration according to my own
preferences, but may be copied and used as a basis for your own.

Current base operating system: **Ubuntu 26.04 LTS**

## Usage

User and system preferences:

```
sudo apt update
sudo apt install -y git ansible
git clone https://github.com/bezborodow/dotfiles.git
cd dotfiles/

./install
```

Updating system configuration requires root sudo access. If just updating user
preferences, then do only:

```
./install_user
```

## Customisation

This is a very simple setup, but a basic understanding of Ansible will be
useful.

 1. `ansible/`: Ansible configuration.
 2. `dist/`: Resources to be installed such as RC files (e.g., dotfiles such as
    `.bashrc`, `.vimrc`, etc), and other user configuration files.
