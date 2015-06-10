# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'DiveLogger'
  app.identifier = 'net.balazar.divelogger'
  app.device_family = :iphone
  app.interface_orientations = [:portrait]


  #PODS
  app.pods do
    pod 'SVProgressHUD'
  end
end
