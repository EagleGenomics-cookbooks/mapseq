#
# Cookbook:: mapseq
# Recipe:: default
#
# Copyright:: 2018, Eagle Genomics Ltd, All Rights Reserved.

default['mapseq']['version'] = '1.2.2'
default['mapseq']['base_name'] = 'mapseq-' + node['mapseq']['version'] + '-linux'
default['mapseq']['archive'] = node['mapseq']['base_name'] + '.tar.gz'
default['mapseq']['install_dir'] = '/usr/local'
default['mapseq']['dir'] = node['mapseq']['install_dir'] + '/' + node['mapseq']['base_name']
default['mapseq']['download_url'] = 'http://meringlab.org/software/mapseq/' + node['mapseq']['archive']
