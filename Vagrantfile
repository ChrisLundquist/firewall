# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :centos5 do |box|
    box.vm.box = "opscode-centos-5.8"
    box.vm.forward_port 3000, 4444
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [".","../"]
      chef.add_recipe "spec::test_recipe"
    end
  end

  config.vm.define :centos6 do |box|
    box.vm.box = "opscode-centos-6.3"
    box.vm.forward_port 3000, 4444
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [".","spec"]
      chef.add_recipe "test_recipe"
    end
  end

  config.vm.define :ubuntu10 do |box|
    box.vm.box = "opscode-ubuntu-10.04"
    box.vm.forward_port 3000, 4444
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [".","spec"]
      chef.add_recipe "test_recipe"
    end
  end

  config.vm.define :ubuntu12 do |box|
    box.vm.box = "opscode-ubuntu-12.04"
    box.vm.forward_port 3000, 4444
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [".","spec"]
      chef.add_recipe "test_recipe"
    end
  end
end
