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

# #TODO Chef 11 compat?
# node.set['postgresql']['pg_hba'] = [
#   {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'ident'},
#   {:type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'md5'},
#   {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'md5'},
#   {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'md5'},
#   {:type => 'host', :db => 'all', :user => 'all', :addr => '0.0.0.0/0', :method => 'md5'}
# ]


# postgresql_connection_info = {
#   :host => "localhost",
#   :port => node['postgresql']['config']['port'],
#   :username => 'postgres',
#   :password => node['postgresql']['password']['postgres']
# }

# node["ocd_rackbox"]["databases"]["postgresql"].each do |entry|

#   postgresql_database entry["database_name"] do
#     connection postgresql_connection_info
#     template entry["template"] if entry["template"]
#     encoding entry["encoding"] if entry["encoding"]
#     collation entry["collation"] if entry["collation"]
#     connection_limit entry["connection_limit"] if entry["connection_limit"]
#     owner entry["owner"] if entry["owner"]
#     action :create
#   end

#   postgresql_database_user entry["username"] do
#     connection postgresql_connection_info
#     action [:create, :grant]
#     password(entry["password"])           if entry["password"]
#     database_name(entry["database_name"]) if entry["database_name"]
#     privileges(entry["privileges"])       if entry["privileges"]
#   end

# end
