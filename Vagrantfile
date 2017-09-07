# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Base image
  config.vm.box = "fedora/25-cloud-base"

  # Mounts
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  # Virtualbox configuration
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
  end

  # Bootstrap Ansible
  config.vm.provision "shell", privileged: true, inline: <<-SHELL
    dnf upgrade -y --refresh --setopt=deltarpm=false
    dnf install -y ansible
  SHELL

  # Provision with Ansible
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.install = false
    ansible.verbose = true
  end
end
