#
# Cookbook Name:: rackbox
# Recipe:: webserver
#

include_recipe "ocd_rackbox::ruby"
include_recipe "runit"
include_recipe "ocd_rackbox::nginx"
include_recipe "ocd_rackbox::nodejs"