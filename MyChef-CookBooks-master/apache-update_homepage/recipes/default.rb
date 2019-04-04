#
# Cookbook Name:: apache-update_homepage
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# recipe to update homepage after previous tutorial

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  mode '0644'
end