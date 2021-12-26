cd /tmp;

# 1. Update & upgrade
sudo apt-get update && sudo apt-get upgrade;

# 2. Zsh
sudo apt install zsh -y && \
   sudo chsh -s /bin/zsh && \
   wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && \
   sh install.sh;

# 2. Required packages
sudo apt-get install -y vim tree mosh tmux htop git curl wget unzip zip gcc build-essential make;

# 3. Docker
sudo apt-get update && \
   sudo apt-get install \
      ca-certificates \
      curl \
      gnupg \
      lsb-release && \
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
   echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && \
   sudo apt-get update && \
   sudo apt-get install docker-ce docker-ce-cli containerd.io;

sudo groupadd docker && \
sudo gpasswd -a $USER docker;
