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

# Secure the system
#   configure SSH
#   configure iptables

# Install database
#   install and configure PostgreSQL

# Install Nginx

# Install Node.js

# Install rbenv