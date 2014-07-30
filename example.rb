require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
  config.run_server = false
  config.current_driver = :selenium
end

class Home < SitePrism::Page
  set_url "http://www.google.com"
end

@home_page = Home.new
@home_page.load

puts @home_page.title
