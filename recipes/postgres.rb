#
# Cookbook Name:: ocd_rackbox
# Recipe:: postgres
#

root_password = node["ocd_rackbox"]["db_root_password"]
if root_password
  Chef::Log.info %(Set node["ocd_postgres"]["users"]["password"] attributes to node["ocd_rackbox"]["db_root_password"])
  node.set["ocd_postgres"]["users"]["password"] = root_password
end

include_recipe 'ocd_postgres::client'
include_recipe 'ocd_postgres::server'
