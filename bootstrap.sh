#!/bin/bash
set -e
sudo apt-get install git -y
git clone git://github.com/openstack-dev/devstack.git
cd devstack
awk '/install_pip.sh/ { print; print "sudo pip install --upgrade setuptools"; next }1' stack.sh > stack_patched.sh
chmod +x stack_patched.sh
export SERVICE_HOST=devstack.vagrant.dev
./stack_patched.sh
echo "Horizon is now accessible at http://devstack.vagrant.dev"
