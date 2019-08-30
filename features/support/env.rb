require 'capybara/cucumber'
require 'selenium/webdriver'
require 'webdrivers'
require_relative 'test_settings'

TestSettings.instance.validate()

Capybara.register_driver :selenium do |app|
    Webdrivers::Chromedriver.update
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
    config.app_host = TestSettings.instance.host_url
end