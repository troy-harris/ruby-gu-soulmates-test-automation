require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
  config.run_server = false
  config.current_driver = :selenium
  config.app_host = 'http://www.google.com/'
end