#
# Cookbook Name:: ocd_rackbox
# Recipe:: database
#

include_recipe "ocd_rackbox::postgres"
include_recipe "redisio::install"