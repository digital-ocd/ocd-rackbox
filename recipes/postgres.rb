#
# Cookbook Name:: ocd_rackbox
# Recipe:: postgres
#

include_recipe 'postgresql::client'
include_recipe 'postgresql::server'
include_recipe 'postgresql::server_dev'

package "postgresql-contrib-#{node['postgresql']['version']}"