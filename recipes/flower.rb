#
# Cookbook Name :: Celery
# Recipe :: flower
#
# Copyright 2013, Arizona
#
# All rights reserved - Do Not Redistribute
# 

# Flower Recipe
include_recipe "celery"

# Install Celery Flow with Pip
python_pip "flower" do
  action :install
end

