#
# Cookbook Name:: project_maduro
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'yum-epel::default'
include_recipe 'iptables::default'

selinux_state 'SELinux Permissive' do
  action :permissive
end

iptables_rule 'iptables_rules' do
  action :enable
end

package 'httpd' do
  action :install
end

service 'httpd' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end
