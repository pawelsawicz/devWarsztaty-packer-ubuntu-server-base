#!/bin/sh
echo "Update apt-get"
sudo apt-get update
sudo apt-get install -y unzip dnsmasq

echo "Downloand & Install Nomad"
# Download & Install Nomad
sudo wget https://releases.hashicorp.com/nomad/0.5.2/nomad_0.5.2_linux_amd64.zip
sudo unzip nomad_0.5.2_linux_amd64.zip
sudo mv nomad /usr/local/bin/

echo "Create folder structure for nomad"
sudo mkdir -p /var/lib/nomad
sudo mkdir -p /etc/nomad
sudo rm nomad_0.5.2_linux_amd64.zip

echo "Downloand & Install Consul"
# Download & Install Consul
sudo wget https://releases.hashicorp.com/consul/0.7.2/consul_0.7.2_linux_amd64.zip
sudo unzip consul_0.7.2_linux_amd64.zip
sudo mv consul /usr/local/bin/

echo "Create folder structure for consul"
sudo mkdir -p /var/lib/consul
sudo rm consul_0.7.2_linux_amd64.zip
