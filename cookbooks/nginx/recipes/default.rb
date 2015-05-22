#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, Affix.ME
#
# All rights reserved - Do Not Redistribute
#

package 'nginx' do
  action :install
end

directory "/etc/nginx/sites-enabled" do
	owner "root"
	group "root"
	action :create
end

cookbook_file "/etc/nginx/sites-enabled/site" do
        source "site.conf"
        mode "0644"
        action :create
end

template "index.php" do
	path "/var/www/html/index.php"
	source "index.php.erb"
	action :create
	mode "0755"
end

cookbook_file "/etc/nginx/nginx.conf" do
        source "nginx.conf"
        mode "0644"
        action :create
end

cookbook_file "/etc/nginx/conf.d/default.conf" do
	action :delete
end

service 'nginx' do
        action [ :enable, :start]
end
