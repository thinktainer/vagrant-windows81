# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "w81"
  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.vm.provision :shell, path: "install_chocolatey.ps1"

  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
    puppet.options = "-v -d"
  end
  
  config.vm.provider "vmware_fusion" do |fusion|
    fusion.gui = true
    fusion.vmx["ethernet1.present"] = "TRUE"
    fusion.vmx["ethernet1.connectionType"] = "hostonly"
    fusion.vmx["ethernet1.virtualDev"] = "e1000e"
    fusion.vmx["ethernet1.wakeOnPcktRcv"] = "FALSE"
    fusion.vmx["ethernet1.addressType"] = "generated"
    fusion.vmx["gui.applyHostDisplayScalingToGuest"] = "TRUE"
  end
end
