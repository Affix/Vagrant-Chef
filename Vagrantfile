# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos6"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "1024"
   end
  
  config.vm.provision :chef_solo do |chef|
    chef.node_name = "CentOS6"
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "yum"
    chef.add_recipe "yum-epel"
    chef.add_recipe "php-fpm"
    chef.add_recipe "nginx"
  end
end
