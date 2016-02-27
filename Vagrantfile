# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provision "shell", path: "./install/install.sh"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.name = "agilty-badalona"
  end
  config.vm.network :forwarded_port, host: 8080, guest: 80
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
end
