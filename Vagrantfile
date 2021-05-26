# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'getoptlong'

# Switch between different Labs
Labs = [
  "lab0",     # 0 <default>
  "lab1",     # 1
]

#Change these flags to change labs
LabIndex = ENV['LabIndex'].to_i

  Vagrant.configure("2") do |config|
    config.vm.box = "SoNiKBooM/TCEWin7Hack"
    config.vm.box_version = "1.1"
    config.vm.communicator = "winrm"
    config.winrm.username = "IEUser"
    config.winrm.password = "Passw0rd!"
    config.vm.guest = :windows
    config.windows.halt_timeout = 15
    config.windows.set_work_network = true
    config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true
    config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true

    config.vm.provision "shell", path: "./labfiles/#{Labs[LabIndex]}/#{Labs[LabIndex]}.ps1"
    config.vm.provision "shell", path: "./labfiles/disable-windows-defender.ps1"
    config.vm.provision "shell", path: "./labfiles/disable-UAC.ps1"
    end
    config.vm.provision "shell", inline: "del C:/tmp/\*"
    config.vm.provision "shell", path: "./labfiles/Rearm.ps1"
    config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "4096"
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--audio", "none"]
    vb.customize ["modifyvm", :id, "--usb", "off"]
    vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
  end
end
