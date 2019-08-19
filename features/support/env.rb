require 'capybara/cucumber'
require 'selenium/webdriver'

capabilities = Selenium::WebDriver::Remote::Capabilities.new
capabilities['browserName'] = "chrome"

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
    config.app_host = 'https://stg.facy.jp/'
end