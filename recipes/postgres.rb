#
# Cookbook Name:: ocd_rackbox
# Recipe:: postgres
#

root_password = node["ocd_rackbox"]["db_root_password"]
if root_password
  Chef::Log.info %(Set node["postgresql"]["users"]["password"] attributes to node["ocd_rackbox"]["db_root_password"])
  node.set["postgresql"]["users"]["password"] = root_password
end

include_recipe 'postgresql::client'
include_recipe 'postgresql::server'
