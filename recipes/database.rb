#
# Cookbook Name:: rackbox
# Recipe:: database
#

include_recipe "rackbox::postgres"
include_recipe "redisio::install"