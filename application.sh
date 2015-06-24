#!/bin/bash
#
# This is an example application for doing deployment validation.
# This is a simple bash script to be deployed to either
# * Linux Host
# * MAC OS X Host
#
nodename=`uname -n`
arch=`uname -m`
datetime=`date +"%u %m/%d/%Y %H:%M:%S.%N"`
echo "Hello World from Distelli."
echo "You have successfully deployed a simple application script."
echo "Server: $nodename"
echo "Server Architecture: $arch"
echo "Server Time: $datetime"
echo "Manifest Environment Variable: $EXAMPLE"
echo ""
sleep 10

