curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt -y install nodejs
sudo apt-get install awscli
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce -y
sudo systectl enable docker
sudo usermod -aG docker ${USER}
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo useradd -G sudo -s /bin/bash -d /home/AzureAgent Azure_agent
sudo mkdir -p /home/AzureAgent
sudo chown -R Azure_agent /home/AzureAgent
echo "Azure_agent ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
mkdir /home/AzureAgent/agent && cd /home/AzureAgent/agent
wget https://vstsagentpackage.azureedge.net/agent/2.184.2/vsts-agent-linux-x64-2.184.2.tar.gz
tar zxvf vsts-agent-linux-x64-2.184.2.tar.gz
sudo rm vsts-agent-linux-x64-2.184.2.tar.gz
su - Azure_agent
sudo chmod 777 *
cd agent

