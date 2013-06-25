# coding: utf-8

Dir[Rails.root + "factories/*.rb"].each do |file|
  require file
end