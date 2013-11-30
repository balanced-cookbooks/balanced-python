#
# Cookbook Name:: balanced-python
# Recipe:: default
#
# Copyright 2013, Balanced
#
# All rights reserved - Do Not Redistribute
#

case node[:platform_family]
  when "debian"
    include_recipe 'apt'
end

include_recipe "python::#{node['python']['install_method']}"
include_recipe 'balanced-python::_common'
