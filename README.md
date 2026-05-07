This will manage a local desktop installation at the user and system levels using [Ansible](https://docs.ansible.com/projects/ansible/latest/).
At the user level, preferences and user settings are managed. At the system level, configuration and packages are managed. This
makes installing a new desktop Linux machine much easier, even when the user has multiple machines. This script is to be run
locally on each machine.

User and system preferences:

```
sudo apt update
sudo apt install -y git ansible
git clone https://github.com/bezborodow/dotfiles.git
cd dotfiles/

./install
```

Thereafter, if only updating the user:

```
git pull

./install_user
```
