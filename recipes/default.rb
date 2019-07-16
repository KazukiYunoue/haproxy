#
# Cookbook:: haproxy
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'haproxy' do
  action :install
end

service "haproxy" do
  action [:enable, :start]
  supports :status => true, :restart => true, :reload => true
end
