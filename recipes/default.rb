#
# Cookbook:: mapseq
# Recipe:: default
#
# Copyright:: 2018, Eagle Genomics Ltd, All Rights Reserved.

include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'tar'

tar_extract "#{node['mapseq']['download_url']}" do
  target_dir node['mapseq']['install_dir']
  creates node['mapseq']['dir']
end

magic_shell_environment 'PATH' do
  filename 'mapseq'
  value "$PATH:#{node['mapseq']['install_dir']}"
end

magic_shell_environment 'MAPSEQ_VERSION' do
  value node['mapseq']['version']
end
