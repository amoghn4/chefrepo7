#
# Cookbook Name:: apt-get-update
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
# this updates the caches for the apt install method to it sees the correct/latest repositories
#
execute "apt-get update" do
	command "apt-get update"
end