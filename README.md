vagrant-devstack
================

This branch has been patched to deal with [bug #1326811](https://bugs.launchpad.net/python-openstackclient/+bug/1326811?comments=all). It uses `awk` to patch `stack.sh` to ensure that `setuptools` has been upgraded to the latest version after installing `pip`.

Start a [DevStack](http://devstack.org/) instance in a [Vagrant](http://www.vagrantup.com/) wrapped virtual machine (VirtualBox):

    $ vagrant plugin install landrush
    $ vagrant landrush start
    $ vagrant up

The access credentials will be generated and displayed after you boot for the first time.

You can access all of the services on the VM on your host machine using the `devstack.vagrant.dev` hostname. This is accomplished with the [Landrush](https://github.com/phinze/landrush) Vagrant plugin.

Login to the machine as the `stack` user:

    $ vagrant ssh
    $ sudo su - stack
