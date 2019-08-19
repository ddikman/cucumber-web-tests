require 'capybara/cucumber'
require_relative '../support/test_settings'

Given /the User navigates to top page/ do
    visit(TestSettings.instance.host_url)
    click_link 'ログイン・新規登録'

    fill_in 'user_email', with: TestSettings.instance.username
    fill_in 'user_password', with: TestSettings.instance.password
    click_button 'ログイン'
end