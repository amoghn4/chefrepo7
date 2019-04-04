#
# Cookbook Name:: apache_tutorial-2  write a base apache install/configure 
# recipe that works on any flavour of Linux
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


# These variables configure Ubuntu and Debian.
package_name = 'apache2'
service_name = 'apache2'
document_root = '/var/www'

# Re-assign the variables if this is run on a RedHat flavour of Linux
if platform_family? 'rhel'
  package_name = 'httpd'
  service_name = 'httpd'
  document_root = '/var/www/html'
end

# Or re-assign the above variables using the node object rather than the above, 
# again for Redhat flavours of Linux:

# if node['platform_family'] == 'rhel'
#  package_name = 'httpd'
#  service_name = 'httpd'
#  document_root = '/var/www/html'
# end

package package_name do
  action :install
end

service service_name do
  action [ :enable, :start ]
end

cookbook_file "#{document_root}/index.html" do
  source 'index.html'
  mode '0644'
end