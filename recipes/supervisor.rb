#
# Cookbook Name :: Celery
# Recipe :: supervisor
#
# Copyright 2013, Arizona
#
# All rights reserved - Do Not Redistribute
# 

# Flower Recipe
include_recipe "celery::flower"

# Install Celery Flow with Pip
python_pip "supervisor" do
  action :install
end

if node[:supervisor][:programs]
  programs = node[:supervisor][:programs].to_hash 
else
  programs = []
end

template "/etc/supervisord.conf" do
  source 'supervisord.conf.erb'
  mode 0644
	variables({
		:programs => programs
	})
end

execute "supervisorctl-update" do
  command "#{node['supervisor']['command_update']}"
  user "root"
  not_if "#{node['supervisor']['command_start']}"
  action :run
end
