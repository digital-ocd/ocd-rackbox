#
# Cookbook Name:: rackbox
# Recipe:: default
#
# Copyright (C) 2014 OC Digital
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rackbox::_common_system"
include_recipe "rackbox::users"
# include_recipe "rackbox::security"
include_recipe "rackbox::database"
include_recipe "rackbox::webserver"
