require 'capybara/cucumber'
require 'selenium/webdriver'
require_relative 'test_settings'

capabilities = Selenium::WebDriver::Remote::Capabilities.new
capabilities['browserName'] = "chrome"

TestSettings.instance.validate()

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
    config.app_host = TestSettings.instance.host_url
end