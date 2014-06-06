#!/bin/bash
set -e
sudo apt-get install git -y
git clone git://github.com/openstack-dev/devstack.git
cd devstack; ./stack.sh
echo "Horizon is now accessible at http://devstack.vagrant.dev"
