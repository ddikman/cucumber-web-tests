require 'capybara/cucumber'
require_relative '../support/test_settings'

Given /the User navigates to top page/ do
    visit(TestSettings.instance.host_url)

    fill_in 'username', with: TestSettings.instance.username
    fill_in 'passwd', with: TestSettings.instance.password
    click_button 'Sign In'
end