vagrant-devstack
================

Start a [DevStack](http://devstack.org/) instance in a [Vagrant](http://www.vagrantup.com/) wrapped virtual machine (VirtualBox):

    $ vagrant plugin install landrush
    $ vagrant up

The access credentials will be generated and displayed after you boot for the first time.

You can access all of the services on the VM on your host machine using the `devstack.vagrant.dev` hostname. This is accomplished with the [Landrush](https://github.com/phinze/landrush) Vagrant plugin.

Login to the machine as the `stack` user:

    $ vagrant ssh
    $ sudo su - stack
