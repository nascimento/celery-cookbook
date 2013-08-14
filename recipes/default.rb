#
# Cookbook Name :: Celery
# Recipe :: default
#
# Copyright 2013, Arizona
#
# All rights reserved - Do Not Redistribute
# 

include_recipe 'python'

# Install Celery with Pip
python_pip "celery" do
  action :install
end