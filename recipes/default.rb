#
# Cookbook Name:: rackbox
# Recipe:: default
#
# Copyright (C) 2014 OC Digital
#
# All rights reserved - Do Not Redistribute
#

include_recipe "ocd_rackbox::_common_system"
include_recipe "ocd_rackbox::users"
include_recipe "ocd_rackbox::security"
include_recipe "ocd_rackbox::webserver"
include_recipe "ocd_rackbox::database"