Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # https://github.com/phinze/landrush
  # Landrush (Vagrant plugin) gives us a common guest-host DNS interface.
  config.landrush.enabled = true
  config.vm.hostname = "devstack.vagrant.dev"

  config.vm.provision :shell, :path => "bootstrap.sh", :privileged => false

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
   end
end
