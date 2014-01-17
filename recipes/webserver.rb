#
# Cookbook Name:: rackbox
# Recipe:: webserver
#

include_recipe "rackbox::ruby"
include_recipe "runit"
include_recipe "rackbox::nginx"
include_recipe "rackbox::nodejs"