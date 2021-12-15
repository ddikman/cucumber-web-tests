require 'capybara/cucumber'
require 'selenium/webdriver'
require 'webdrivers'

Capybara.register_driver :chrome_driver do |app|
    Webdrivers::Chromedriver.update
    Capybara::Selenium::Driver.new(app, browser: :chrome )
end

Capybara.register_driver :chrome_headless do |app|
  Webdrivers::Chromedriver.update
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

driver = :chrome_driver
if ENV['HEADLESS'] = 'true'
  driver = :chrome_headless
  print("Running with headless driver")
end

Capybara.configure do |config|
    config.run_server = false
    config.default_driver = driver
end