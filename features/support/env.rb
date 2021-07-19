require 'capybara/cucumber'
require 'selenium/webdriver'
require 'webdrivers'

if test_settings.driver == :web
    Capybara.register_driver :selenium do |app|
        Webdrivers::Chromedriver.update
        Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
else
    raise "Unsupported driver supplied: #{test_settings.driver}"
end

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
end