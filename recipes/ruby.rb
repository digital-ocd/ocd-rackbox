#
# Cookbook Name:: racksbox
# Recipe:: ruby
#
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

node["ocd_rackbox"]["ruby"]["versions"].each do |rb_version|

  rbenv_ruby rb_version do
    global(node["ocd_rackbox"]["ruby"]["global_version"] == rb_version)
  end
  rbenv_gem "bundler" do
    ruby_version rb_version
  end

end