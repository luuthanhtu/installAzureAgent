sudo useradd -G sudo -s /bin/bash -d /home/AzureAgent Azure_agent
sudo mkdir -p /home/AzureAgent
sudo chown -R ubuntu:ubuntu /home/ubuntu
echo "Azure_agent	ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
mkdir myagent && cd myagent
wget https://vstsagentpackage.azureedge.net/agent/2.184.2/vsts-agent-linux-x64-2.184.2.tar.gz
sudo apt-get install zip unzip -y
sudo unzip vsts-agent-linux-x64-2.184.2.tar.gz
sudo rm vsts-agent-linux-x64-2.184.2.tar.gz
su - Azure_agent
./config.sh
./run.sh
