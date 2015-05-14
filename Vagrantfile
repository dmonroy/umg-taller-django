VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    config.vm.hostname = "umg-taller-django"

    # https://github.com/mitchellh/vagrant/issues/1673
    config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

    config.vm.network :forwarded_port, guest: 5000, host: 5000 
    config.vm.network :forwarded_port, guest: 8000, host: 8000 

    config.vm.provision "shell" do |shell|
        shell.path = "bin//provision.sh"
    end
end

