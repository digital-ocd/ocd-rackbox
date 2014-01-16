#
# Cookbook Name:: rackbox
# Recipe:: users
#

user node['rackbox']['user'] do
  group node['rackbox']['group']
  password node['rackbox']['password']
  system true
  home "/home/#{node[:rackbox][:user]}"
  supports manage_home: true
  shell '/bin/bash'
end

template "/home/#{node[:rackbox][:user]}/.bashrc" do
  source "bashrc.erb"
  owner node[:rackbox][:user]
end

directory "/home/#{node[:rackbox][:user]}/apps" do
  owner node[:rackbox][:user]
end

directory "/home/#{node[:rackbox][:user]}/.ssh" do
  owner node[:rackbox][:user]
  mode "0700"
end

file "/home/#{node[:rackbox][:user]}/.ssh/authorized_keys" do
  owner node[:rackbox][:user]
  mode "0600"
end