sudo useradd -G sudo -s /bin/bash -d /home/AzureAgent Azure_agent
sudo mkdir -p /home/AzureAgent
sudo chown -R Azure_agent /home/AzureAgent
echo "Azure_agent	ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
mkdir /home/AzureAgent/agent && cd /home/AzureAgent/agent
wget https://vstsagentpackage.azureedge.net/agent/2.184.2/vsts-agent-linux-x64-2.184.2.tar.gz
tar zxvf vsts-agent-linux-x64-2.184.2.tar.gz
sudo rm vsts-agent-linux-x64-2.184.2.tar.gz
su - Azure_agent
cd agent
./config.sh
./run.sh
