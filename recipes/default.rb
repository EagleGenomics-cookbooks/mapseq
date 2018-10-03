#
# Cookbook:: mapseq
# Recipe:: default
#
# Copyright:: 2018, Eagle Genomics Ltd, All Rights Reserved.

include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'tar'

tar_extract "foo" do
  source node['mapseq']['download_url']
  target_dir node['mapseq']['install_dir']
  creates node['mapseq']['dir']
end
