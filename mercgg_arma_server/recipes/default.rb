# #
# # Cookbook:: mercgg_arma_server
# # Recipe:: default
# #
# # Copyright:: 2020, The Authors, All Rights Reserved.
# apt_package 'nano'
# bash 'extract_module' do
#     code <<-EOH
#     add-apt-repository multiverse
#     dpkg --add-architecture i386
#     EOH
#   end

# apt_update

# apt_package 'lib32gcc1'
# # apt_repository 'multiverse' do
# #   uri 'multiverse'
# # end

# # dpkg_package 'i386'

# # apt_package 'lib32gcc1'
# # apt_package 'steamcmd'
# remote_file "/root/steamcmd_linux.tar.gz" do
# source "http://media.steampowered.com/installer/steamcmd_linux.tar.gz"
# end

# bash 'extract_module' do
#     code <<-EOH
#     tar -xvzf /root/steamcmd_linux.tar.gz -C /root
#     EOH
#   end

#   bash 'extract_module' do
#     code <<-EOH
#     /root/steamcmd.sh +login +quit
#     EOH
#   end

puts "hello!"