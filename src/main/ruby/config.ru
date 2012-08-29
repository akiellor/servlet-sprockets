require 'rubygems'
require 'less'
require 'coffee_script'
require 'sprockets'

asset_root = java.lang.System.getProperty("asset.root") || Pathname.new(".").join("classes").expand_path

environment = Sprockets::Environment.new asset_root
environment.append_path 'app/assets/javascripts'
environment.append_path 'app/assets/stylesheets'

p environment

run environment
