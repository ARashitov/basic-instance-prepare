# 1. Update & upgrade
sudo apt-get update && sudo apt-get upgrade;

# 2. Required packages
sudo apt-get install -y vim tree mosh tmux htop git curl wget unzip zip gcc build-essential make;

# 3. Docker
sudo apt-get update;
sudo apt-get -y install apt-transport-https ca-certificates gnupg-agent software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo apt-key fingerprint 0EBFCD88;
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable";
sudo apt-get update;
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose;

# 4. Python3
sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev python3.9 python3-pip python3-venv python-dev
