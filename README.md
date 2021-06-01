# basic-instance-prepare
Given repository contains script required to install dependencies on server

## Prerequisite

* Ubuntu 20.04 LTS

## Installation

* `prepare.sh`:
    * Installs Python3.9 and all it prerequisites
    * Installs extra packages (vim tree mosh tmux htop git curl wget unzip zip gcc build-essential make)
    * Installs docker-ce docker-ce-cli containerd.io docker-compose, docker.io

* `remove_sudo_from_docker.sh`: Removes sudo command for execution docker
* `install_zsh.sh`: Replaces `.bash` shell by `.zsh` shell & installs oh-my-zsh
