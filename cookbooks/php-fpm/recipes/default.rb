#
# Cookbook Name:: php-fpm
# Recipe:: default
#
# Copyright 2015, Affix.ME
#
# All rights reserved - Do Not Redistribute
#

package 'php' do
	action :install
end

package 'php-fpm' do
  action :install
end

package 'php-gd' do
	action :install
end

package 'php-mcrypt' do
	action :install
end

package 'php-mysql' do
        action :install
end

package 'php-pear-Net-Curl' do
	action :install
end

service 'php-fpm' do
        action [ :enable, :start]
end
