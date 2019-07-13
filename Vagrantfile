# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  #config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.define "server" do |server|
    server.vm.box = "centos/7"
    server.vm.hostname = "server.billa.com"
    server.vm.network "private_network", ip: "192.168.0.25"
    server.vm.provider "virtualbox" do |vb|
      vb.name = "server"
      vb.memory = 1024
      vb.cpus = 1
    end
  end
  
  config.vm.define "grafana" do |grafana|
    grafana.vm.box = "centos/7"
    grafana.vm.hostname = "grafana.billa.com"
    grafana.vm.network "private_network", ip: "192.168.0.32"
    grafana.vm.provider "virtualbox" do |vb|
      vb.name = "grafana"
      vb.memory = 1024
      vb.cpus = 1
    end
	config.vm.provision "shell", path: "grafana_provision.sh"
  end  

  config.vm.define "app1" do |app1|
    app1.vm.box = "centos/7"
    app1.vm.hostname = "app1.billa.com"
    app1.vm.network "private_network", ip: "192.168.0.26"
    app1.vm.provider "virtualbox" do |vb|
      vb.name = "app1"
      vb.memory = 512
      vb.cpus = 1
    end
  end

    config.vm.define "ansible" do |ansible|
    ansible.vm.box = "centos/7"
    ansible.vm.hostname = "ansible.billa.com"
    ansible.vm.network "private_network", ip: "192.168.0.27"
    ansible.vm.provider "virtualbox" do |vb|
      vb.name = "ansible"
      vb.memory = 512
      vb.cpus = 1
    end
	ansible.vm.provision :shell, path: "bootstrap.sh"
  end
  
    config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "centos/7"
    jenkins.vm.hostname = "jenkins.billa.com"
    jenkins.vm.network "private_network", ip: "192.168.0.28"
    jenkins.vm.provider "virtualbox" do |vb|
      vb.name = "jenkins"
      vb.memory = 2048
      vb.cpus = 1
    end
	jenkins.vm.provision :shell, path: "bootstrap.sh"
  end 
  
    config.vm.define "otrs" do |otrs|
    otrs.vm.box = "centos/7"
    otrs.vm.hostname = "otrs.billa.com"
    otrs.vm.network "private_network", ip: "192.168.0.30"
    otrs.vm.provider "virtualbox" do |vb|
      vb.name = "otrs"
      vb.memory = 512
      vb.cpus = 1
    end
	otrs.vm.provision :shell, path: "bootstrap.sh"
  end 
  
    config.vm.define "mysqlphp" do |mysqlphp|
    mysqlphp.vm.box = "bento/ubuntu-16.04"
    mysqlphp.vm.hostname = "mysqlphp.billa.com"
    mysqlphp.vm.network "private_network", ip: "192.168.0.31"
    mysqlphp.vm.provider "virtualbox" do |vb|
      vb.name = "mysqlphp"
      vb.memory = 512
      vb.cpus = 1
    end  
  end 
  
    config.vm.define "ansClient" do |ansClient|
    ansClient.vm.box = "bento/ubuntu-16.04"
    ansClient.vm.hostname = "ansClient.billa.com"
    ansClient.vm.network "private_network", ip: "192.168.0.35"
    ansClient.vm.provider "virtualbox" do |vb|
      vb.name = "ansClient"
      vb.memory = 1024
      vb.cpus = 1
    end  
  end
  
    config.vm.define "app2" do |app2|
    app2.vm.box = "centos/7"
    app2.vm.hostname = "app2.billa.com"
    app2.vm.network "private_network", ip: "192.168.0.33"
    app2.vm.provider "virtualbox" do |vb|
      vb.name = "app2"
      vb.memory = 512
      vb.cpus = 1
    end  
  end
  
  
    config.vm.define "app3" do |app3|
    app3.vm.box = "centos/7"
    app3.vm.hostname = "app3.billa.com"
    app3.vm.network "private_network", ip: "192.168.0.34"
    app3.vm.provider "virtualbox" do |vb|
      vb.name = "app3"
      vb.memory = 512
      vb.cpus = 1
    end  
  end
	
	
    config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "bento/ubuntu-16.04"
    ubuntu.vm.hostname = "ubuntu.billa.com"
    ubuntu.vm.network "private_network", ip: "192.168.0.29"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.name = "ubuntu"
      vb.memory = 512
      vb.cpus = 1
    end  
  end 
end

puts "-------------------------------------------------"
puts "ELK-SERVER  : # 192.168.0.25"
puts "app1        : # 192.168.0.26"
puts "ansible     : # 192.168.0.27"
puts "jenkins     : # 192.168.0.28"
puts "ubuntu 	    : # 192.168.0.29"
puts "otrs        : #192.168.0.30"
puts "mysqlphp    : # 192.168.0.31"
puts "grafana     : # 192.168.0.32"
puts "app2        : # 192.168.0.33"
puts "app3        : # 192.168.0.34"
puts "ansClient   : # 192.168.0.35"
puts "-------------------------------------------------"