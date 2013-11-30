#
# Cookbook Name:: balanced-python
# Recipe:: source
#
# Copyright 2013, Balanced, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.override['python']['install_method'] = 'source'
node.override['python']['version'] = '2.7.5'
node.override['python']['prefix_dir'] = '/usr/local'
node.override['python']['binary'] = "#{node['python']['prefix_dir']}/bin/python"
node.override['python']['configure_options'] = %W{--prefix=#{node['python']['prefix_dir']}}

include_recipe 'balanced-python::default'