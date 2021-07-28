require 'capybara/cucumber'
require 'selenium/webdriver'
require 'webdrivers'

Capybara.register_driver :selenium do |app|
    Webdrivers::Chromedriver.update
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
end