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
rpm -ivh puppet-agent-5.3.5-1.el7.x86_64.rpm
service puppet status
