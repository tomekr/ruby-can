Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
  #   # Customize the amount of memory on the VM:
      vb.memory = "1024"
  end
  #
  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :shell, :path => "install-rvm.sh",  :args => "stable"
end
