#
# Cookbook Name:: ocd_rackbox
# Recipe:: users
#

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

template "/etc/sudoers" do
  source "sudoers.erb"
  variables :commands => node['ocd_rackbox']['no_password_cmds'].join(", ")
end

template "etc/sudoers" do
  source 'sudoers.erb'
  mode   '0440'
  owner  'root'
  variables :commands => node['ocd_rackbox']['no_password_cmds'].join(", ")
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
