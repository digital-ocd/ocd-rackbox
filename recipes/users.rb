#
# Cookbook Name:: ocd_rackbox
# Recipe:: users
#

include_recipe "sudo"

user node['ocd_rackbox']['user'] do
  group node['ocd_rackbox']['group']
  password node['ocd_rackbox']['password']
  system true
  home "#{node['ocd_rackbox']['home_dir']}"
  supports manage_home: true
  shell '/bin/bash'
end

template "#{node['ocd_rackbox']['home_dir']}/.bashrc" do
  source "bashrc.erb"
  owner node['ocd_rackbox']['user']
end

sudo 'ocd' do
  user      "ocd"    # or a username
  nopasswd true
  commands  node['ocd_rackbox']['no_password_cmds']
end

directory "#{node['ocd_rackbox']['home_dir']}/apps" do
  owner node['ocd_rackbox']['user']
end

directory "#{node['ocd_rackbox']['home_dir']}/.ssh" do
  owner node['ocd_rackbox']['user']
  mode "0700"
end

if node['ocd_rackbox']['ssh_keys']
  template "#{node['ocd_rackbox']['home_dir']}/.ssh/authorized_keys" do
    source "authorized_keys.erb"
    owner node['ocd_rackbox']['user']
    mode "0600"
    variables :ssh_keys => node['ocd_rackbox']['ssh_keys']
  end
end
