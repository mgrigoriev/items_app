BOX_IMAGE = 'generic/ubuntu1804'
VM_NETWORK = '192.168.100'

Vagrant.configure("2") do |config|
  config.vm.define "web" do |web|
    web.vm.box = BOX_IMAGE
    web.vm.hostname = "web"
    web.vm.network :private_network, ip: "#{VM_NETWORK}.22"
    web.vm.network :forwarded_port, guest: 22, host: 2222
  end

  config.vm.define "db" do |db|
    db.vm.box = BOX_IMAGE
    db.vm.hostname = "db"
    db.vm.network :private_network, ip: "#{VM_NETWORK}.23"
    db.vm.network :forwarded_port, guest: 22, host: 2223
  end
end
