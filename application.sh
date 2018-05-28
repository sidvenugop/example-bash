#!/bin/bash
#
# This is an example application for doing deployment validation.
# This is a simple bash script to be deployed to either
# * Linux Host
# * MAC OS X Host
#
if [ -d "/etc/puppetlabs" ]; then
echo "Puppet Already Installed"
else
sudo yum install wget -y
sudo wget https://s3.amazonaws.com/puppet-agents/2017.3/puppet-agent/5.3.5/repos/el/7/PC1/x86_64/puppet-agent-5.3.5-1.el7.x86_64.rpm
sudo rpm -ivh puppet-agent-5.3.5-1.el7.x86_64.rpm
sudo systemctl start puppet 
systemctl status puppet
fi
bash
if [ -d "/usr/bin/git" ]; then
echo "Git Already Installed"
else
sudo yum install git -y
fi
sudo su
cd /etc/puppetlabs/code/environments/production/modules/
sudo git clone https://github.com/sidvenugop/helloworld
puppet --version
