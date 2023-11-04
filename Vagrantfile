Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/focal64"

  # Primeira máquina virtual
  config.vm.define "maquina1" do |maquina1|
    maquina1.vm.provider "virtualbox" do |vb|
      vb.memory = "256"
      vb.cpus = "1"
    end
  
    #maquina1.vm.network "forwarded_port", guest: 80, host: 8080

    if maquina1 
      maquina1.vm.network "private_network", ip: "192.168.0.15"
      maquina1.vm.provision "shell", path: "script_vm1.sh"
    end
  end

  # Segunda máquina virtual
  config.vm.define "maquina2" do |maquina2|
    maquina2.vm.provider "virtualbox" do |vb|
      vb.memory = "256"
      vb.cpus = "1"
    end

    #maquina2.vm.network "forwarded_port", guest: 80, host: 8081
    
    if maquina2
      maquina2.vm.network "private_network", ip: "192.168.0.254"
      maquina2.vm.network "private_network", ip: "10.0.0.254"
      maquina2.vm.provision "shell", path: "script_vm2.sh"
    end
  end

    # Terceira máquina virtual
  config.vm.define "maquina3" do |maquina3|
    maquina3.vm.provider "virtualbox" do |vb|
      vb.memory = "256"
      vb.cpus = "1"
    end

    #maquina3.vm.network "forwarded_port", guest: 80, host: 8082

    if maquina3
      maquina3.vm.network "private_network", ip: "10.0.0.15"
      maquina3.vm.provision "shell", path: "script_vm3.sh"
    end
  end
end
