#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# chef-repo/cookbook/apache/recipes/default.rb


# install apache

package node["package_name"] do
	action :install
end

# start apache service
# make sure that service starts on reboot

service node["service_name"]  do
	action [:start , :enable]
end

# write our homepage

template "#{node["document_root"]}/index.html" do
	source "index.html.erb"
	mode "0644"
end

 


