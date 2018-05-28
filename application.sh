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
yum install wget
wget https://s3.amazonaws.com/puppet-agents/2017.3/puppet-agent/5.3.5/repos/el/7/PC1/x86_64/puppet-agent-5.3.5-1.el7.x86_64.rpm
fi
sudo rpm -ivh puppet-agent-5.3.5-1.el7.x86_64.rpm
sudo systemctl start puppet 
systemctl status puppet
cd /etc/puppetlabs/code/environments/production/modules/
git clone https://github.com/sidvenugop/helloworld
puppet apply --modulepath=/etc/puppetlabs/code/environments/production/modules -e "include helloworld" --noop
