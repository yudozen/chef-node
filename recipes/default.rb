#
# Cookbook Name:: node
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/tmp/node" do
	repository "git://github.com/joyent/node.git"
	reference "v0.8.21"
	action :sync
end

bash "install_node" do
	user "root"
	cwd "/tmp/node"
	code <<-EOH
		(./configure && make && make install)	
	EOH
end
