#
# Cookbook Name:: ocd_rackbox
# Recipe:: default
#

include_recipe "ocd_rackbox::_common_system"
include_recipe "ocd_rackbox::users"
include_recipe "ocd_rackbox::security"
include_recipe "ocd_rackbox::webserver"
include_recipe "ocd_rackbox::database"