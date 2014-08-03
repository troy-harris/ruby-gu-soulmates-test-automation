require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../site_soulmates/page_loader'
require_relative '../site_soulmates/pages/home'

Capybara.configure do |config|
  config.run_server = false
  config.current_driver = :selenium
  config.app_host = 'https://soulmates.theguardian.com/'
end

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end