#
# Cookbook Name:: apache-tutorial-1
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# this one does the following:
# 1 - install Apache
# 2 - start the service and make sure it will start when the machine boots
# 3 - configure the home page

package 'httpd' do
  action :install
end

service 'httpd' do
  action [ :enable, :start ]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  mode '0644'
end