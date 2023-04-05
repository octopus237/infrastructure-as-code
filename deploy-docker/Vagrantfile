Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "client-1"
  config.vm.network "public_network", ip: "10.1.1.11", hostname: true
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1500"
  end
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yaml"
  end  
end
