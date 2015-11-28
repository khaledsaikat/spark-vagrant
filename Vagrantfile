VAGRANTFILE_API_VERSION ||= "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  #config.vm.box = "ubuntu/trusty64"
  config.vm.box = "hashicorp/precise32"

  #config.ssh.private_key_path = '~/.ssh/id_rsa'
  #config.ssh.forward_agent = true

  # config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  config.vm.synced_folder "projects/", "/home/vagrant/projects/"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end

  config.vm.provision :shell, path: "provision_scripts/system.sh"
  config.vm.provision :shell, path: "provision_scripts/compatibility.sh"
  config.vm.provision :shell, path: "provision_scripts/spark.sh"
end
