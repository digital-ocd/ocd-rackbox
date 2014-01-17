#
# Cookbook Name:: rackbox
# Recipe:: users
#

user node['rackbox']['user'] do
  group node['rackbox']['group']
  password node['rackbox']['password']
  system true
  home "#{node['rackbox']['home_dir']}"
  supports manage_home: true
  shell '/bin/bash'
end

template "#{node['rackbox']['home_dir']}/.bashrc" do
  source "bashrc.erb"
  owner node[:rackbox][:user]
end

directory "#{node['rackbox']['home_dir']}/apps" do
  owner node[:rackbox][:user]
end

directory "#{node['rackbox']['home_dir']}/.ssh" do
  owner node[:rackbox][:user]
  mode "0700"
end

if node[:rackbox]['ssh_keys']
  template "#{node['rackbox']['home_dir']}/.ssh/authorized_keys" do
    source "authorized_keys.erb"
    owner node[:rackbox][:user]
    mode "0600"
    variables :ssh_keys => node[:rackbox]['ssh_keys']
  end
end
