apt_package 'nano'
# apt_package 'ubuntu-desktop'
apt_package 'iptables-persistent'

bash 'extract_module' do
  code <<-EOH
    add-apt-repository multiverse
    dpkg --add-architecture i386
    EOH
  not_if { ::File.exist?('/root/steamcmd.sh') }
end

apt_update

apt_package 'lib32gcc1'

remote_file '/root/steamcmd_linux.tar.gz' do
  source 'http://media.steampowered.com/installer/steamcmd_linux.tar.gz'
  not_if { ::File.exist?('/root/steamcmd.sh') }
end

bash 'extract_module' do
  code <<-EOH
    tar -xvzf /root/steamcmd_linux.tar.gz -C /root
    EOH
  not_if { ::File.exist?('/root/steamcmd.sh') }
end

cookbook_file '/root/install_arma.sh' do
  source 'install_arma.sh'
  mode '0755'
end

bash 'update server install script permissions' do
  code <<-EOH
          chmod u+x /root/install_arma.sh
        EOH
end

bash 'install arma server' do
  code <<-EOH
      /root/install_arma.sh
    EOH
end

cookbook_file '/root/iptables.sh' do
  source 'iptables.sh'
  mode '0755'
end

bash 'update iptables script permissions' do
  code <<-EOH
          chmod u+x /root/iptables.sh
        EOH
end

bash 'run iptables' do
  code <<-EOH
      /root/iptables.sh
    EOH
end

cookbook_file '/root/arma_server_mods.sh' do
  source 'arma_server_mods.sh'
  mode '0755'
end

bash 'update server mods script permissions' do
  code <<-EOH
          chmod u+x /root/arma_server_mods.sh
        EOH
end

# bash 'install arma server mods' do
#   code <<-EOH
#       /root/arma_server_mods.sh
#     EOH
# end